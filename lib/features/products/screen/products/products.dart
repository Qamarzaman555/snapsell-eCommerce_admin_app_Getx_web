import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/products_desktop_tablet_view.dart';
import '../responsive_screens/products_mobile_view..dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: ProductsScreenDesktopTablet(),
      mobile: ProductsScreenMobile(),
    );
  }
}
