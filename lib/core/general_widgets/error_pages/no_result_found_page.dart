import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget noResultFoundPage(
    {required BuildContext context, String message = "No result found!"}) {
  TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
  return ListView(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      SizedBox(
        height: 100,
      ),
      //SvgPicture.asset('assets/svg_icons/error_icons/no_result_found_icon.svg', width: 150,),
      Align(
        alignment: Alignment.center,
        child: SizedBox(
            width: 100,
            child: Image.asset(
              'assets/svg_icons/error_icons/result_not_found_emoji.png',
              width: 100,
            )),
      ),

      SizedBox(
        height: 50,
      ),
      Align(
          alignment: Alignment.center,
          child: Text(
            message,
            style: primaryTextTheme.displayMedium!
                .copyWith(color: Theme.of(context).primaryColor),
          )),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
