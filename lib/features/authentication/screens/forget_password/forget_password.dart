import 'package:flutter/material.dart';

import '../../../../common/widgets/layouts/templates/site_layout.dart';
import 'responsive_screens/foreget_password_desktop_tablet.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      useLayout: false,
      desktop: ForgetPasswordScreenDesktopTablet(),
      mobile: ForgetPasswordScreen(),
    );
  }
}
