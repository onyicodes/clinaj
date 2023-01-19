import 'dart:async';

import 'package:clinaj/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreenController extends GetxController {
  final GetStorage storeBox;
  

  SplashScreenController({required this.storeBox});

  @override
  void onReady() async {
    super.onReady();
    await loading();
  }

  Future<void> loading() async {
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed(Routes.onboarding);
    });
  }
}
