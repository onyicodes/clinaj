import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:clinaj/core/general_widgets/deals/custom_search_field.dart';
import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget {
  const ExploreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 240,
              width: MediaQuery.of(context).size.width,
            ),
           
            Positioned(
              top: -60,
              left: 0,
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Positioned(
              top: 80,
              left: 24,
              child: Text('Hi, Christopher!',style: primaryTextTheme.bodyLarge!.copyWith(color: Colors.white, fontSize: 20),)),
           
             Positioned(
              top: 120,
              left: 24,
              child: Text('Find your doctor',style: primaryTextTheme.displayMedium!.copyWith(color: Colors.white),)),
            Positioned(
              top: 70,
              right:24,
              child: CircleAvatar(radius: 30,)),
           
            Align(
              alignment: Alignment.center,
              child: CustomSearchField(
                  controller: TextEditingController(),
                  hintText: 'search deal',
                  inputType: TextInputType.text,
                  onChanged: (value) {},
                  errorText: ''),
            ),
          ],
        ),
      ],
    );
  }
}
