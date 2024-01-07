import 'package:desh_e_app/common/styles/spacing_styles.dart';
import 'package:desh_e_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPresssed});

  final String image, title, subTitle;
  final VoidCallback onPresssed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(children: [
            ///Image
            Lottie.asset(image, width: MediaQuery.of(context).size.width * 0.6),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Title & Sub-title
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),

            Text(subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Buttons
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPresssed,
                    // onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text(TTexts.tContinue))),
            const SizedBox(height: TSizes.spaceBtwItems),
          ]),
        ),
      ),
    );
  }
}
