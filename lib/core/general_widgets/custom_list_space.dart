import 'package:flutter/material.dart';

class CustomListSpacing extends StatelessWidget {
  final bool isVertical;
  final double spacingValue;
  const CustomListSpacing({Key? key, required this.isVertical, required this.spacingValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isVertical? spacingValue: 0,
      width: isVertical?0:spacingValue,
    );
  }
}
