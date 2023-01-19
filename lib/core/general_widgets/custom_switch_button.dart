

import 'package:flutter/material.dart';

class CustomSwitchButton extends StatelessWidget {
  const CustomSwitchButton(
      {Key? key, required this.switchController, required this.onChanged, required this.title})
      : super(key: key);
  final bool switchController;
  final String title;
  final void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(value: switchController, onChanged: onChanged, activeColor: Theme.of(context).toggleableActiveColor,),
        Text(title, style: Theme.of(context).primaryTextTheme.bodyText1)
        
      ],
    );
  }
}
