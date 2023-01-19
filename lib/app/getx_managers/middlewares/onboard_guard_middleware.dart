import 'package:clinaj/app/getx_managers/services/auth_services.dart';
import 'package:clinaj/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardGuardMiddleware extends GetMiddleware {
  var authService = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    return authService.hasOnboarded() ?  const RouteSettings(name: Routes.signin) : null ;
  }
  
}