import 'package:clinaj/app/features/splash_screen/presentation/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  SplashScreenPage({Key? key}) : super(key: key) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return GetBuilder<SplashScreenController>(
      builder: (_) => Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/icons/vuba_icon.png')))
          ],
        ),
      ),
    );
  }
}
