import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:flutter/material.dart';

class OnboardingDisplayWidget extends StatelessWidget {
  final OnboardContentEntity content;
  final bool rightSided;
  const OnboardingDisplayWidget({Key? key, required this.content, required this.rightSided})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: -40,
                  left:rightSided?null: -100,
                  right: rightSided?-100:null,
                  child: Container(
                    height: 340,
                    width: 340,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(400)),
                  ),
                ),
                Container(
                  height: 350,
                  width: 350,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(400)),
                  child: Image(image: AssetImage(content.imageUrl)),
                )
              ],
            ),
            Text(
              content.title,
              textAlign: TextAlign.center,
              style: primaryTextTheme.headline1,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                content.subtitle,
                textAlign: TextAlign.center,
                style: primaryTextTheme.bodyText1,
              ),
            ),
          ],
        ));
  }
}