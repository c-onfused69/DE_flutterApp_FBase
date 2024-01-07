// Dart code for the OnBoardingScreen class in the onboarding.dart file.
// This code represents the onboarding screen of an authentication feature in a mobile app.
// It includes the necessary imports, a stateless widget, and the build method that constructs the UI.
// The UI consists of a stack with a horizontal PageView, skip button, dot navigation, and next button.

import 'package:desh_e_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:desh_e_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:desh_e_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:desh_e_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:desh_e_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:desh_e_app/utils/constants/image_strings.dart';
import 'package:desh_e_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///Onboarding Controller to handle logic
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal PageView
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardinPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardinPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardinPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// SKIP Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
