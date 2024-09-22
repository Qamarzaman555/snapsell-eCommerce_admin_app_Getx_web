import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../images/t_circular_image.dart';
import 'menu/menu_item.dart';

class TSidebar extends StatelessWidget {
  const TSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: TColors.white,
          border: Border(
            right: BorderSide(color: TColors.grey, width: 1),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image
              const TCircularImage(
                width: 200,
                height: 100,
                image: TImages.lightAppLogo,
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'MENU',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .apply(letterSpacingDelta: 1.2),
                    ),

                    // Menu Items
                    const TMenuItem(
                      route: TRoutes.login,
                      icon: Iconsax.status,
                      itemName: 'Responsive',
                    ),
                    const TMenuItem(
                      route: TRoutes.login,
                      icon: Iconsax.activity,
                      itemName: 'First',
                    ),
                    const TMenuItem(
                      route: TRoutes.login,
                      icon: Iconsax.screenmirroring,
                      itemName: 'Second',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
