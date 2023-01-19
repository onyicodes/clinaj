import 'package:flutter/material.dart';

class CustomLoadingWidget extends StatelessWidget {
  final String msg;
  const CustomLoadingWidget({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: Colors.transparent,
      child: Image.asset('assets/images/icons/vuba_icon.png'),
    );
  }
}
