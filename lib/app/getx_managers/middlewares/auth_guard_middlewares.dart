import 'package:clinaj/app/getx_managers/services/auth_services.dart';
import 'package:clinaj/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthGuardMiddleware extends GetMiddleware {
  var authService = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    return authService.isLoggedIn() ? null : const RouteSettings(name: Routes.roles);
  }

}