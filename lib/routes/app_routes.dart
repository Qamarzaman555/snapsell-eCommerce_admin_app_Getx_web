import 'package:get/get.dart';

import '../features/authentication/screens/login/login.dart';
import 'routes.dart';

class TAppRoute {
  static final List<GetPage> pages = [
    GetPage(name: TRoutes.login, page: (() => const LoginScreen())),
    // GetPage(name: TRoutes.forgetPassword, page: (() => const ForgotPasswordScreen())),
    // GetPage(name: TRoutes.resetPassword, page: (() => const ResetPasswordScreen())),
    // GetPage(name: TRoutes.dashboard, page: (() => const DashBoardScreen()),middlewares: [TRouteMiddleware()]),
    // GetPage(name: TRoutes.media, page: (() => const MediaScreen()),middlewares: [TRouteMiddleware()]),
  ];
}
