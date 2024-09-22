import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/spacing_styles.dart';

/// Templete for the login page layout
class TLoginTemplete extends StatelessWidget {
  const TLoginTemplete({super.key, required this.child});

  /// The widget to be displayed inside the login tempplete
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: Container(
              padding: TSpacingStyle.paddingWithAppBarHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                color: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
              ),
              child: child),
        ),
      ),
    );
  }
}
