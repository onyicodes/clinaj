import 'package:clinaj/app/features/splash_screen/presentation/bindings/splash_binding.dart';
import 'package:clinaj/app/features/splash_screen/presentation/pages/splash_screen_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => SplashScreenPage(),
        binding: SplashBinding(),
        transition: Transition.leftToRightWithFade),
    
  ];
}
