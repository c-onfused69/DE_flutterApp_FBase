import 'package:desh_e_app/common/widgets/texts/section_heading.dart';
import 'package:desh_e_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/images/t_circular_image.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profile')),

      /// --Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              ///Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Heading Profile Information
              TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                title: 'Name',
                value: 'Anisur Rahman',
                onPressed: () {},
              ),
              TProfileMenu(
                  title: 'Username', value: 'anisur_rahman', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(
                  title: 'User ID',
                  value: '111974',
                  icon: Iconsax.copy,
                  onPressed: () {}),
              TProfileMenu(
                  title: 'E-mail',
                  value: 'Anisur_74@outlook.com',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Phone Number',
                  value: '+880-17-123-4567',
                  onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                  title: 'Date of Birth',
                  value: '01 Jan, 1974',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ), // Column
        ),
      ),
    );
  }
}
