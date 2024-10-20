import 'package:get/get.dart';

import '../features/authentication/screens/forget_password/forget_password.dart';
import '../features/authentication/screens/login/login.dart';
import '../features/authentication/screens/reset_password/reset_password.dart';
import '../features/brands/screen/brands/brands.dart';
import '../features/categories/screen/categories/categories.dart';
import '../features/coupons/screen/coupons/coupons.dart';
import '../features/customers/screen/customers/customers.dart';
import '../features/dashboard/screen/dashboard/dashboard.dart';
import '../features/media/screen/media/media.dart';
import '../features/orders/screen/orders/orders.dart';
import '../features/products/screen/products/products.dart';
import '../features/profile/screen/profile/profile.dart';
import '../features/settings/screen/settings/settings.dart';
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
    GetPage(
        name: TRoutes.dashboard,
        page: (() => const DashBoardScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.media,
        page: (() => const MediaScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.brands,
        page: (() => const BrandsScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.categories,
        page: (() => const CategoriesScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.coupons,
        page: (() => const CouponsScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.customers,
        page: (() => const CustomersScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.orders,
        page: (() => const OrdersScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.products,
        page: (() => const ProductsScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.profile,
        page: (() => const ProfileScreen()),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoutes.settings,
        page: (() => const SettingsScreen()),
        middlewares: [TRouteMiddleware()]),
  ];
}
