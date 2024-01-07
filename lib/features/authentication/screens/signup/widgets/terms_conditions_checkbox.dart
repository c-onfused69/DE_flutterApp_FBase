import 'package:desh_e_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:desh_e_app/utils/constants/colors.dart';
import 'package:desh_e_app/utils/constants/text_strings.dart';
import 'package:desh_e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? Colors.white : TColors.primary,
                  )),
          TextSpan(
              text: '${TTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: TTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? Colors.white : TColors.primary,
                  )),
        ]))
      ],
    );
  }
}
