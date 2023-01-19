import 'package:flutter/material.dart';

class BottomSheetBorderLine extends StatelessWidget {
  final bool bottomPosition;
  const BottomSheetBorderLine({Key? key, required this.bottomPosition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width:bottomPosition? 160: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Theme.of(context).secondaryHeaderColor,
      ),
    );
  }
}
