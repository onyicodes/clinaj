import 'package:clinaj/app/features/onboarding/presentation/controllers/onboarding_controller.dart';
import 'package:clinaj/app/features/onboarding/presentation/widgets/onboarding_display_widget.dart';
import 'package:clinaj/app/features/onboarding/presentation/widgets/radio_builder.dart';
import 'package:clinaj/core/constants/assets_constants.dart';
import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends GetView<OnboardingController> {
  OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Scaffold(
      body: GetX<OnboardingController>(builder: (_) {
        return _.contentList.isNotEmpty
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetsConstants.clinajBg),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GetX<OnboardingController>(
                      builder: (_) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: PageView(
                            controller: _.pageController,
                            physics: const PageScrollPhysics(),
                            scrollBehavior: ScrollBehavior(),
                            onPageChanged: ((value) {
                              _.page = value;
                            }),
                            children: _.contentList
                                .asMap()
                                .entries
                                .map((entry) => OnboardingDisplayWidget(
                                    content: entry.value,
                                    rightSided: entry.key % 2 != 0))
                                .toList(),
                          ),
                        );
                      },
                    ),
                    GetX<OnboardingController>(
                      builder: (_) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RadioBuilder(selected: 0 == _.page),
                              RadioBuilder(selected: 1 == _.page),
                              RadioBuilder(selected: 2 == _.page),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CustomButton(
                          label: _.page == 2 ? 'Get started' : 'Next',
                          backgroundColor: Theme.of(context).primaryColor,
                          borderColor: Theme.of(context).primaryColor,
                          radius: 12,
                          height: 60,
                          onPressed: () {
                            if (_.page != 2) {
                              _.pageController.nextPage(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.linear);
                            } else {
                              _.toSignupPage();
                            }
                          },
                          width: MediaQuery.of(context).size.width * 0.9,
                          primaryTextTheme: primaryTextTheme),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: primaryTextTheme.displaySmall,
                        ))
                  ],
                ),
              )
            : const CircularProgressIndicator();
      }),
    );
  }
}
