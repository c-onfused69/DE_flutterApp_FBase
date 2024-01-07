import 'package:desh_e_app/data/repositories/authentication/authentication_repository.dart';
import 'package:desh_e_app/utils/popups/full_screen_loader.dart';
import 'package:desh_e_app/utils/popups/loaders.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../screens/password_configuration/reset_password.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormkey = GlobalKey<FormState>();

  /// Send Reset Password EMail
  sendPasswordResetEmail() async {
    try {
      //Show Loading Dialog
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.docerAnimation);

      //Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!forgetPasswordFormkey.currentState!.validate()) {
        //Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }
      //Send Email to reset password
      await AuthenticationRepository.instance
          .sendPasswordResentEmail(email.text.trim());

      //Remove Loader
      TFullScreenLoader.stopLoading();

      //Show Success Dialog
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Please check your email to reset your password'.tr);

      //Redirect to Login Screen
      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      //Remove Loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  //Resend sent Email
  resendPasswordResetEmail(String email) async {
    try {
      //Show Loading Dialog
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.docerAnimation);

      //Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      //Send Email to reset password
      await AuthenticationRepository.instance
          .sendPasswordResentEmail(email);

      //Remove Loader
      TFullScreenLoader.stopLoading();

      //Show Success Dialog
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Please check your email to reset your password'.tr);

    } catch (e) {
      //Remove Loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
