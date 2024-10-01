import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/general_bindings.dart';
import 'routes/app_routes.dart';
import 'routes/routes.dart';
import 'utils/constants/text_strings.dart';
import 'utils/device/web_material_scroll.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      getPages: TAppRoute.pages,
      theme: TAppTheme.lightTheme,
      initialRoute: TRoutes.login,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      scrollBehavior: MyCustomScrollBehavior(),
      unknownRoute: GetPage(
          name: '/page-not-found',
          page: () =>
              const Scaffold(body: Center(child: Text('Page Not Found')))),
      // home: const Scaffold(
      //   backgroundColor: TColors.primary,
      //   body: Center(
      //     child: CircularProgressIndicator(color: Colors.white),
      //   ),
      // ),
    );
  }
}
