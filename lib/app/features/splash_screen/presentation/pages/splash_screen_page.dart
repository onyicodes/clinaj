import 'package:clinaj/app/features/splash_screen/presentation/controllers/splash_screen_controller.dart';
import 'package:clinaj/core/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgProvider;
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
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsConstants.clinajBg),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: SizedBox(
                  width: 150,
                  height: 150,
                  child: SvgPicture.asset(AssetsConstants.clinajIcon)),
            ),
          )),
    );
  }
}
