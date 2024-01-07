import 'package:carousel_slider/carousel_slider.dart';
import 'package:desh_e_app/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((Url) => TRoundedImage(imageUrl: Url)).toList(),
          // const [
          //   TRoundedImage(imageUrl: ,TImages.banner9),
          //   TRoundedImage(imageUrl: ,TImages.banner10),
          //   TRoundedImage(imageUrl: ,TImages.banner11),
          //   TRoundedImage(imageUrl: ,TImages.banner17),
          //   TRoundedImage(imageUrl: ,TImages.banner13),
          //   TRoundedImage(imageUrl: ,TImages.banner16),
          //   TRoundedImage(imageUrl: ,TImages.banner20),
          //   TRoundedImage(imageUrl: ,TImages.banner21),
          // ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                      width: 20,
                      height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor:
                          controller.carousalCurrentIndex.value == i
                              ? TColors.primary
                              : TColors.grey),
              ],
            ),
          ),
        )
      ],
    );
  }
}
