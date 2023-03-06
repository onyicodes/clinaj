import 'dart:ui';

import 'package:clinaj/core/general_widgets/buttom_sheet_borderline.dart';
import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:flutter/material.dart';

class UploadImageDialog extends StatelessWidget {
  final void Function() onTapTakePhoto;
  final void Function() onTapChooseFromLib;
  final void Function() onTapDelete;
  final void Function() onTapCancel;
  const UploadImageDialog({
    Key? key,
    required this.onTapCancel,
    required this.onTapDelete,
    required this.onTapChooseFromLib,
    required this.onTapTakePhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 350,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BottomSheetBorderLine(),
            const SizedBox(
              height: 8,
            ),
            CustomButton(
                label: 'Take a photo',
                onPressed: onTapTakePhoto,
                borderColor: Theme.of(context).primaryColor,
                backgroundColor: Theme.of(context).primaryColor,
                primaryTextTheme: primaryTextTheme),
            CustomButton(
                label: 'Choose from library',
                onPressed: onTapChooseFromLib,
                borderColor: Theme.of(context).primaryColor,
                backgroundColor: Theme.of(context).primaryColor,
                primaryTextTheme: primaryTextTheme),
            CustomButton(
                label: 'Delete photo',
                onPressed: onTapDelete,
                borderColor: Theme.of(context).primaryColor,
                backgroundColor: Theme.of(context).cardColor,
                textColor: primaryTextTheme.displayLarge!.color!,
                primaryTextTheme: primaryTextTheme),
            const SizedBox(height: 8),
            CustomButton(
                label: 'Cancel',
                onPressed: onTapCancel,
                borderColor: Theme.of(context).primaryColor,
                backgroundColor: Theme.of(context).cardColor,
                textColor: primaryTextTheme.displayLarge!.color!,
                primaryTextTheme: primaryTextTheme),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
