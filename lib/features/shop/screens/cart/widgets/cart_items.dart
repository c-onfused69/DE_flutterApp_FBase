import 'package:flutter/material.dart';

import '../../../../../common/widgets/product/cart/add_remove_button.dart';
import '../../../../../common/widgets/product/cart/cart_item.dart';
import '../../../../../common/widgets/product/product_price/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          //Cart Item
          TCartItem(),
          if (showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

          ///Add Remove Buttons with Product Price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ///Extra Space
                    SizedBox(width: 70),

                    ///Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                ///Product Price
                TProductPriceText(price: '250'),
              ],
            )
        ],
      ),
    );
  }
}
