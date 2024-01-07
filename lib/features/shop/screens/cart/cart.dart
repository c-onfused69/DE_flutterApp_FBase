import 'package:desh_e_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:desh_e_app/features/shop/screens/checkout/checkout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        ///Item in Cart
        child: TCartItems(),
      ),

      ///checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: Text('Checkout \$256.0')),
      ),
    );
  }
}
