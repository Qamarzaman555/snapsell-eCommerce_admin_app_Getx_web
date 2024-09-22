import 'package:flutter/material.dart';

import '../../../../../common/widgets/layouts/templates/login_templete.dart';
import '../widgets/header_form.dart';

class ForgetPasswordScreenDesktopTablet extends StatelessWidget {
  const ForgetPasswordScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const TLoginTemplete(
      child: HeaderAndForm(),
    );
  }
}
