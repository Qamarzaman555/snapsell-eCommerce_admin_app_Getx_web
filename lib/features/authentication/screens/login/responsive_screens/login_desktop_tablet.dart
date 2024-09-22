import 'package:flutter/material.dart';

import '../../../../../common/widgets/layouts/templates/login_templete.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return TLoginTemplete(
      child: const Column(
        children: [
          // Header
          TLoginHeader(),

          // Form
          LoginForm(),
        ],
      ),
    );
  }
}
