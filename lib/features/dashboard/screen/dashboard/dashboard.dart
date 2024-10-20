import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/dashboard_desktop_tablet_view.dart';
import '../responsive_screens/dashboard_mobile_view..dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: DashboardScreenDesktopTablet(),
      mobile: DashboardScreenMobile(),
    );
  }
}
