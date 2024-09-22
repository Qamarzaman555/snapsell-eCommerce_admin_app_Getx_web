import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../widgets/rewset_password_widget.dart';

class ResetPasswordScreenMobile extends StatelessWidget {
  const ResetPasswordScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ResetPasswordWidget(),
        ),
      ),
    );
  }
}
