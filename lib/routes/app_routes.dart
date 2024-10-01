import 'package:get/get.dart';

import '../features/authentication/screens/forget_password/forget_password.dart';
import '../features/authentication/screens/login/login.dart';
import '../features/authentication/screens/reset_password/reset_password.dart';
import 'routes.dart';
import 'routes_middleware.dart';

class TAppRoute {
  static final List<GetPage> pages = [
    GetPage(name: TRoutes.login, page: (() => const LoginScreen())),
    GetPage(
        name: TRoutes.forgetPassword,
        page: (() => const ForgetPasswordScreen())),
    GetPage(
        name: TRoutes.resetPassword, page: (() => const ResetPasswordScreen())),
    // GetPage(name: TRoutes.dashboard, page: (() => const DashBoardScreen()),middlewares: [TRouteMiddleware()]),
    // GetPage(name: TRoutes.media, page: (() => const MediaScreen()),middlewares: [TRouteMiddleware()]),
  ];
}
