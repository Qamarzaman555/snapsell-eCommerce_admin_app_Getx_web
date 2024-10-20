import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/coupons_desktop_tablet_view.dart';
import '../responsive_screens/coupons_mobile_view..dart';

class CouponsScreen extends StatelessWidget {
  const CouponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: CouponsScreenDesktopTablet(),
      mobile: CouponsScreenMobile(),
    );
  }
}
