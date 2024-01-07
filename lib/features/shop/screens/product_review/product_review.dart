import 'package:desh_e_app/features/shop/screens/product_review/widgets/rating_progress_indicator.dart';
import 'package:desh_e_app/features/shop/screens/product_review/widgets/user_review_card.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/product/rating/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// --Appbar
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      /// --Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use."),
              SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              const OverallProductRating(),
              TRatingBarIndicator(rating: 4.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
