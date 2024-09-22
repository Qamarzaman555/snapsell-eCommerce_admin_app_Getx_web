import 'package:flutter/material.dart';

import '../../layouts/headers/header.dart';
import '../../layouts/sidebars/sidebar.dart';

/// Widget for the tablet layout
class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, this.body});
  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const TSidebar(),
      appBar: THeader(scaffoldKey: scaffoldKey),
      body: body ?? const SizedBox(),
    );
  }
}
