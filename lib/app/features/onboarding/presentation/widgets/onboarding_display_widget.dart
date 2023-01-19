import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:flutter/material.dart';

class OnboardingDisplayWidget extends StatelessWidget {
  final OnboardContentEntity content;
  const OnboardingDisplayWidget({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.65,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.grey[300],
              height: MediaQuery.of(context).size.height*0.5, child: Placeholder(),),
            
            Text(content.title,textAlign: TextAlign.center, style: primaryTextTheme.headline2,),
            
            Text(content.subtitle, style: primaryTextTheme.bodyText1,),
            const SizedBox(height: 12,)
            
          ],
        ));
  }
}
