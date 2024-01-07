import 'package:desh_e_app/common/styles/spacing_styles.dart';
import 'package:desh_e_app/common/widgets/login_signup/form_divider.dart';
import 'package:desh_e_app/common/widgets/login_signup/social_buttons.dart';
import 'package:desh_e_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:desh_e_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:desh_e_app/utils/constants/sizes.dart';
import 'package:desh_e_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// logo, title &sub-title
            const TLoginHeader(),

            /// Form
            const TLoginForm(), // Column, Form
            ///Divider
            TFormDivider(dividerText: TTexts.orSignInWith.capitalize!), // Row
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Footer
            const TSocialButtons()
          ],
          // padding: EdgeInsets.only(
          //   top: TSizes.appBarHeight,
          //   left: TSizes.defaultSpace,
          //   bottom: TSizes.defaultSpace,
          //   right: TSizes.defaultSpace,
          // ), // EdgeInsets.only
        ), // Padding
      ), // SingleChildScrollView
    )); // Scaffold
  }
}
