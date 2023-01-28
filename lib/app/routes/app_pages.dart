import 'package:clinaj/app/features/onboarding/presentation/bindings/onboard_binding.dart';
import 'package:clinaj/app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:clinaj/app/features/signin/presentation/pages/signup_page.dart';
import 'package:clinaj/app/features/signup/presentation/bindings/signup_binding.dart';
import 'package:clinaj/app/features/signup/presentation/pages/signup_page.dart';
import 'package:clinaj/app/features/splash_screen/presentation/bindings/splash_binding.dart';
import 'package:clinaj/app/features/splash_screen/presentation/pages/splash_screen_page.dart';
import 'package:clinaj/app/getx_managers/middlewares/onboard_guard_middleware.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => SplashScreenPage(),
        binding: SplashBinding(),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: Routes.onboarding,
        page: () =>OnboardingPage(),
        binding: OnboardingBinding(),
        transition: Transition.leftToRightWithFade,
        middlewares: [OnboardGuardMiddleware()]),
     GetPage(
        name: Routes.signup,
        page: () =>const SignupPage(),
        binding: SignupBinding(),
        transition: Transition.leftToRightWithFade,),

      GetPage(
        name: Routes.signin,
        page: () =>const SigninPage(),
        binding: SignupBinding(),
        transition: Transition.leftToRightWithFade,),
  ];
}
