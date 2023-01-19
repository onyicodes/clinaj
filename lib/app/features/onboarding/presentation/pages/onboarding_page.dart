import 'package:clinaj/app/features/onboarding/presentation/controllers/onboarding_controller.dart';
import 'package:clinaj/app/features/onboarding/presentation/widgets/onboarding_display_widget.dart';
import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends GetView<OnboardingController> {
  OnboardingPage({Key? key}) : super(key: key);
 final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
     TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return  GetX<OnboardingController>(builder: (_) {
        return _.contentList.isNotEmpty
            ? GetX<OnboardingController>(
      builder: (_) {
        return ListView(
          shrinkWrap: true,
          children: [
            GetX<OnboardingController>(
              builder: (_) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: ((value) {
                      _.page = value;
                    }),
                    children: _.contentList
                        .map((e) => OnboardingDisplayWidget(content: e))
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
                      Radio(
                          value: 0, groupValue: _.page, onChanged: (value) {}),
                      Radio(
                          value: 1, groupValue: _.page, onChanged: (value) {}),
                      Radio(value: 2, groupValue: _.page, onChanged: (value) {})
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
                  onPressed: () {
                    if (_.page != 2) {
                      pageController.nextPage(
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
                  style: primaryTextTheme.headline3,
                ))
          ],
        );
      },
    )
            : const CircularProgressIndicator();
      });
  }
}
