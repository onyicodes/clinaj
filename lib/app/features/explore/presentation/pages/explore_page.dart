import 'package:clinaj/app/features/explore/presentation/controllers/explore_controller.dart';
import 'package:clinaj/app/features/explore/presentation/widgets/explore_app_bar.dart';
import 'package:clinaj/app/features/onboarding/presentation/controllers/onboarding_controller.dart';
import 'package:clinaj/core/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplorePage extends GetView<ExploreController> {
  ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsConstants.clinajBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: const ExploreAppBar()),
          
          
        ],
      ),
    );
  }
}
