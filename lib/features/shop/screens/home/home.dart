import 'package:desh_e_app/features/shop/screens/all_products/all_products.dart';
import 'package:desh_e_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:desh_e_app/features/shop/screens/home/widgets/home_catagories.dart';
import 'package:desh_e_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                ///Appbar
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Searchbar
                  TSearchContainer(
                    text: 'Search in store',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(
                          title: 'Popular Catagories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        ///Catagories
                        const THomeCatagories(), // ListView.builder
                      ],
                    ), // Column
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.banner9,
                      TImages.banner10,
                      TImages.banner11,
                      TImages.banner17,
                      TImages.banner13,
                      TImages.banner16,
                      TImages.banner20,
                      TImages.banner21
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Heading
                  TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// popular products
                  TGridLayout(
                      itemCount: 6,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            )
          ],
        ), // Column
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
