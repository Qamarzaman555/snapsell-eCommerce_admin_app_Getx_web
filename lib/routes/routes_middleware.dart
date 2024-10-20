import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../data/repositories/authentication/authentication_repository.dart';

class TRouteMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    log('........... Middleware Called for $route ............');

    // Check if user is authenticated
    bool isAuthenticated = AuthenticationRepository.instance.isAuthenticated;

    // Redirect based on authentication
    if (!isAuthenticated) {
      // If not authenticated, redirect to the login page
      return const RouteSettings(name: TRoutes.login);
    }

    // Otherwise, proceed to the requested route
    return null;
  }
}
