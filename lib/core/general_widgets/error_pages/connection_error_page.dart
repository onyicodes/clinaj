import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget connectionErrorPage({required BuildContext context, required void Function() onTapped, String message = 'Please make sure you are connected to the internet. Then reload to continue practicing.'}) {
  TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
  return ListView(
    physics:const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      SizedBox(height: 10,),
      SvgPicture.asset('assets/svg_icons/error_icons/connection_error_svg.svg', width: 150,),
      Align(
        alignment: Alignment.center,
        child: Text('Connection Error', style: primaryTextTheme.headline2!.copyWith(color: Theme.of(context).primaryColor),)),
      SizedBox(height: 20,),
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left:20.0, right: 20),
          child: Text(message,
          textAlign: TextAlign.center,
          style: primaryTextTheme.bodyText1,),
        ),
      ),
      SizedBox(height: 30,),
      Align(
        alignment: Alignment.center,
        child: CustomButton(
          label: 'RELOAD',
          backgroundColor: Theme.of(context).primaryColor,
          borderColor: Theme.of(context).primaryColor,
          primaryTextTheme:primaryTextTheme,
           onPressed: onTapped,
        radius: 15
        ))
    ],
  );
}
