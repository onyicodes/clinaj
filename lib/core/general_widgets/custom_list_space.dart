import 'package:flutter/material.dart';

class CustomListSpacing extends StatelessWidget {
  final bool isMajorSpacing;
  const CustomListSpacing({Key? key, required this.isMajorSpacing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: isMajorSpacing?24: 12,
    );
  }
}
