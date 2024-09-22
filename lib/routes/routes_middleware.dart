import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TRouteMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    log('........... Middleware Called ............');
    const isAuthenticated = true;
    // return isAuthenticated
    //     ? null
    //     : const RouteSettings(name: TRoutes.firstScreen);
  }
}
