import 'package:clinaj/core/general_widgets/appbar_pop_widget.dart';
import 'package:flutter/material.dart';

AppBar customAppBar(
    {Key? key,
    required String title,
    double elevation = 0.3,
    double toolbarHeight = 70,
    bool centerTitle = false,
    List<Widget> actions = const <Widget>[],
    required TextTheme primaryTextTheme,
    required void Function() onAppBarTap}) {
  return AppBar(
    title: Text(
      title,
      style: primaryTextTheme.headline2,
    ),
    centerTitle: centerTitle,
    actions: actions,
    leading: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 12,
      ),
      child: CustomAppBarLeadingWidget(onTap: onAppBarTap),
    ),
    elevation: elevation,
    toolbarHeight: toolbarHeight,
  );
}
