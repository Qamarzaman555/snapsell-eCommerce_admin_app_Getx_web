import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/customers_desktop_tablet_view.dart';
import '../responsive_screens/customers_mobile_view..dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: CustomersScreenDesktopTablet(),
      mobile: CustomersScreenMobile(),
    );
  }
}
