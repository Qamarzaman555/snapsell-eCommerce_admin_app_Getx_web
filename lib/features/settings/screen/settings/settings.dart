import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/settings_desktop_tablet_view.dart';
import '../responsive_screens/settings_mobile_view..dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: SettingsScreenDesktopTablet(),
      mobile: SettingsScreenMobile(),
    );
  }
}
