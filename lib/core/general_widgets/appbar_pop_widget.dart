import 'package:flutter/material.dart';

class CustomAppBarLeadingWidget extends StatelessWidget {
  final void Function() onTap;
  const CustomAppBarLeadingWidget({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.lightBlue,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_left_sharp),
        ),
      ),
    );
  }
}
