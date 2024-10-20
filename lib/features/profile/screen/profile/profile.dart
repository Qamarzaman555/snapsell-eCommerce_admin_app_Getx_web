import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/profile_desktop_tablet_view.dart';
import '../responsive_screens/profile_mobile_view..dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: ProfileScreenDesktopTablet(),
      mobile: ProfileScreenMobile(),
    );
  }
}
