import 'package:desh_e_app/common/widgets/texts/section_heading.dart';
import 'package:desh_e_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:desh_e_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:desh_e_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:desh_e_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:desh_e_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';
import '../product_review/product_review.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image slider
            TProductImageSlider(),

            ///Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Rating and share button
                  TRatingAndShare(),

                  ///Price title and stock
                  TProductMetaData(),

                  ///Product Attributes
                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    'Among many factors that can make a difference between a sale and a loss is the product description. In case of t-shirts, the impact is even more! An ideal t-shirt product description answers your customer’s informational needs.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Reviews(187)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                      )
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
