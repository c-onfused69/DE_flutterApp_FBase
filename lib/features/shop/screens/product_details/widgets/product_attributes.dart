import 'package:desh_e_app/common/widgets/product/product_price/product_price_text.dart';
import 'package:desh_e_app/common/widgets/texts/product_title_text.dart';
import 'package:desh_e_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          ///Actaual Price
                          Text('\$25',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///Sale Price
                          TProductPriceText(price: '20'),
                        ],
                      ),

                      ///stock
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock: ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'White',
                  selected: true,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Black',
                  selected: false,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (Value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Sizes'),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'Extra Small',
                  selected: true,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Small',
                  selected: true,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Medium',
                  selected: false,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Large',
                  selected: false,
                  onSelected: (Value) {},
                ),
                TChoiceChip(
                  text: 'Extra Large',
                  selected: false,
                  onSelected: (Value) {},
                ),
              ],
            )
          ],
        )
      ],
    ); // Column
  }
}
