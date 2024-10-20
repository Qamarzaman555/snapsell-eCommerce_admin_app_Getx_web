import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/brands_desktop_tablet_view.dart';
import '../responsive_screens/brands_mobile_view..dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: BrandsScreenDesktopTablet(),
      mobile: BrandsScreenMobile(),
    );
  }
}
