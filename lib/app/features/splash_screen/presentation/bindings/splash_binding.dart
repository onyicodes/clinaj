import 'package:clinaj/app/features/splash_screen/presentation/controllers/splash_screen_controller.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final getSplashscreenControllerSl = GetInstance();

class SplashBinding implements Bindings {
  @override
  void dependencies() async {
    getSplashscreenControllerSl.lazyPut<SplashScreenController>(
        () => SplashScreenController(storeBox: getSplashscreenControllerSl()));

    getSplashscreenControllerSl.put(GetStorage());

    getSplashscreenControllerSl.put(const FlutterSecureStorage());
  }
}
