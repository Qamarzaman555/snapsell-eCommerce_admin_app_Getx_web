import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts/templates/site_layout.dart';
import '../responsive_screens/categories_desktop_tablet_view.dart';
import '../responsive_screens/categories_mobile_view..dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: CategoriesScreenDesktopTablet(),
      mobile: CategoriesScreenMobile(),
    );
  }
}
