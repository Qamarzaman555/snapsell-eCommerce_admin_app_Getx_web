import 'package:flutter/material.dart';

import '../../layouts/headers/header.dart';

/// Widget for the desktop layout
class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: Drawer()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // HEADER
                const THeader(),

                // BODY
                body ?? const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
