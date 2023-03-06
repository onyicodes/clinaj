import 'dart:ui';

import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatelessWidget {
  final String title;
  final void Function() onTapYes;
  final void Function() onTapCancel;
  const CustomDialogBox(
      {Key? key,
      required this.title,
      required this.onTapCancel,
      required this.onTapYes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Are you sure you want to delete your account?',
                  style: primaryTextTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              CustomButton(
                  label: 'Yes',
                  onPressed: onTapYes,
                  backgroundColor: Theme.of(context).errorColor,
                  borderColor: Theme.of(context).errorColor,
                  primaryTextTheme: primaryTextTheme),
              const SizedBox(
                height: 4,
              ),
              CustomButton(
                  label: 'Cancel',
                  onPressed: onTapCancel,
                  borderColor: Theme.of(context).errorColor,
                  backgroundColor: Theme.of(context).cardColor,
                  textColor: primaryTextTheme.displayLarge!.color!,
                  primaryTextTheme: primaryTextTheme),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
