import 'package:desh_e_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:desh_e_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:desh_e_app/utils/constants/text_strings.dart';
import 'package:desh_e_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormkey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        TValidator.validateEmptyText('First name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        TValidator.validateEmptyText('Last name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            ///User Name
            TextFormField(
              controller: controller.username,
              validator: (value) =>
                  TValidator.validateEmptyText('Username', value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            ///Email
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              // expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            ///Contact Number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validatePhoneNumber(value),
              // expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            ///Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                // expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Terms&Conditions CheckBox
            const TTermsAndConditionCheckbox(),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.signup(),
                  child: const Text(TTexts.createAccount)),
            )
          ],
        ));
  }
}
