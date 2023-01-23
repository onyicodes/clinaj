import 'package:clinaj/core/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

customSnackbar(
    {required String title,
    required String message,
    int duration = 3,
    SnackPosition snackPosition = SnackPosition.TOP,
    Color overlayColor = Colors.white}) {
  Get.snackbar(title, message,
      icon: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(AssetsConstants.clinajLogo),
      ),
      duration: Duration(seconds: duration),
      snackPosition: snackPosition);
}
