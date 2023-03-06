import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  final double radius;
  final double width;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final bool loading;
  final Color borderColor;
  final TextTheme primaryTextTheme;

  const CustomButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.radius = 30.0,
      this.width = 300.0,
      required this.backgroundColor,
      required this.borderColor,
      this.textColor = Colors.white,
      this.height = 50.0,
      this.loading = false,
      required this.primaryTextTheme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      clipBehavior: Clip.hardEdge,
      onPressed: loading ? null : onPressed,
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(width, height)),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(radius),
                  ),
                  side: BorderSide(color: borderColor))),
          shadowColor: MaterialStateProperty.all(
            const Color(0xff4d4d4d).withOpacity(0.2),
          ),
          backgroundColor: MaterialStateProperty.all(
              loading ? backgroundColor.withOpacity(0.6) : backgroundColor)),
      child: loading
          ? const CircularProgressIndicator(
              color: Colors.white,
            )
          : Text(label,
              style: primaryTextTheme.displaySmall!.copyWith(color: textColor)),
    );
  }
}
