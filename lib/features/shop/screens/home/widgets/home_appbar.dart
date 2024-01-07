import 'package:desh_e_app/features/personalization/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contrller = Get.put(UserController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Obx(
            () => Text(contrller.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColors.white)),
          )
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        ) // Stack
      ],
    );
  }
}
