import 'dart:ui';

import 'package:clinaj/app/features/signin/presentation/controllers/signin_controller.dart';
import 'package:clinaj/core/general_widgets/auth_field/password_textfield.dart';
import 'package:clinaj/core/general_widgets/buttom_sheet_borderline.dart';
import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:clinaj/core/general_widgets/custom_list_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 430,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          color: Colors.white,
        ),
        child: ListView(
          children: [
           const SizedBox(height: 4,),
            const Align(
              alignment: Alignment.topCenter,
              child:  BottomSheetBorderLine()),
           const CustomListSpacing(isMajorSpacing: true),
            Text('Reset password', style: primaryTextTheme.headline2,),
           const CustomListSpacing(isMajorSpacing: false),
            Text("""Set the new password for your account so you can login and access all the features.""", style: primaryTextTheme.bodyText1,),
const CustomListSpacing(isMajorSpacing: true),
            GetX<SigninController>(
              builder: (_) {
                return PasswordTextField(
                  controller: _.passwordController,
                  errorText: _.passwordError,
                  obscurePassword: _.obscurePasswordText,
                  label: 'Password',
                  onChanged: (String value) {
                    _.checkPasswordError();
                  },
                  toggleObscureText: () {
                    _.obscurePasswordText = !_.obscurePasswordText;
                  },
                  hintText: 'New password');
              },
            ),

            const CustomListSpacing(isMajorSpacing: true),
            GetX<SigninController>(
              builder: (_) {
                return PasswordTextField(
                  controller: _.passwordController,
                  errorText: _.passwordError,
                  obscurePassword: _.obscurePasswordText,
                  label: 'Password',
                  onChanged: (String value) {
                    _.checkPasswordError();
                  },
                  toggleObscureText: () {
                    _.obscurePasswordText = !_.obscurePasswordText;
                  },
                  hintText: 'Re-enter password');
              },
            ),
            const CustomListSpacing(isMajorSpacing: true),
            Center(
              child: GetBuilder<SigninController>(
                builder: (_) {
                  return CustomButton(
                      label: 'Continue',
                      onPressed: () {
                      },
                      radius: 12,
                      width: 345,
                      borderColor: Theme.of(context).primaryColor,
                      backgroundColor: Theme.of(context).primaryColor,
                      textColor:const Color(0xffffffff),
                      primaryTextTheme: primaryTextTheme);
                },
              ),
            ),
            const CustomListSpacing(isMajorSpacing: true),
          ],
        ),
      ),
    );
  }
}
