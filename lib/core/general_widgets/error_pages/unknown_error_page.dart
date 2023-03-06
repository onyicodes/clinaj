import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:flutter/material.dart';

Widget unKnownErrorPage(
    {required BuildContext context, required void Function() onTapped}) {
  TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
  return ListView(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      SizedBox(
        height: 50,
      ),
      //SvgPicture.asset('assets/svg_icons/error_icons/no_result_found_icon.svg', width: 150,),
      Align(
        alignment: Alignment.center,
        child: SizedBox(
            width: 100,
            child: Image.asset(
              'assets/svg_icons/error_icons/unknown_error_emoji.png',
              width: 100,
            )),
      ),
      SizedBox(
        height: 20,
      ),
      Align(
          alignment: Alignment.center,
          child: Text(
            'Oops! an error occurred',
            style: primaryTextTheme.displayMedium!
                .copyWith(color: Theme.of(context).primaryColor),
          )),
      SizedBox(
        height: 50,
      ),
      Align(
          alignment: Alignment.center,
          child: CustomButton(
              label: 'RELOAD',
              primaryTextTheme: primaryTextTheme,
              onPressed: onTapped,
              backgroundColor: Theme.of(context).primaryColor,
              borderColor: Theme.of(context).primaryColor,
              radius: 35)),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
