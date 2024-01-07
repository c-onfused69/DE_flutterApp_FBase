import 'package:desh_e_app/common/widgets/success_screen/success_screen.dart';
import 'package:desh_e_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:desh_e_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:desh_e_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/product/cart/coupon_widget.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// - Items in Cart
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Coupon Text Field
              TCouponCode(), // TRoundedContainer
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Payment Methods
                    const TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Address
                    const TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      ///checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Successful!',
                  subTitle: 'Your Item will be shipped soon!',
                  onPresssed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: Text('Checkout \$256.0')),
      ),
    );
  }
}
