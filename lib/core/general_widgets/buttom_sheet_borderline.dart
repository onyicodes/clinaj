import 'package:flutter/material.dart';

class BottomSheetBorderLine extends StatelessWidget {
  const BottomSheetBorderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color:const Color(0xffC4C4C4),
      ),
    );
  }
}
