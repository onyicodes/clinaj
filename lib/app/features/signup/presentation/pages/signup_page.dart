import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:clinaj/app/features/signup/presentation/widgets/password_check.dart';
import 'package:clinaj/app/features/signup/presentation/widgets/social_signups.dart';
import 'package:clinaj/app/routes/app_pages.dart';
import 'package:clinaj/core/constants/assets_constants.dart';
import 'package:clinaj/core/constants/request_status.dart';
import 'package:clinaj/core/general_widgets/auth_field/auth_field_divider.dart';
import 'package:clinaj/core/general_widgets/auth_field/custom_auth_field.dart';
import 'package:clinaj/core/general_widgets/auth_field/password_textfield.dart';
import 'package:clinaj/core/general_widgets/auth_field/phone_number_text_field.dart';
import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:clinaj/core/general_widgets/custom_list_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Scaffold(
      body: GetX<SignupController>(builder: (_) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsConstants.clinajBg),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 100,
              ),
              const CustomListSpacing(isMajorSpacing: true),
              Text(
                'Join us to start searching',
                textAlign: TextAlign.center,
                style: primaryTextTheme.headline2,
              ),
              const CustomListSpacing(isMajorSpacing: false),
              Text(
                'You can search c ourse, apply course and find scholarship for abroad studies',
                textAlign: TextAlign.center,
                style: primaryTextTheme.bodyText1,
              ),
              const CustomListSpacing(isMajorSpacing: true),
              const SocialSignups(),
              CustomAuthField(
                  controller: _.emailAddressController,
                  hintText: 'abc@example.com',
                  label: 'E-mail',
                  errorText: _.emailError,
                  onChanged: (String value) {
                    if (_.emailError.isNotEmpty) {
                      _.emailError = '';
                    }
                  },
                  inputType: TextInputType.emailAddress),
              CustomAuthField(
                  controller: _.userNameController,
                  hintText: 'Name',
                  label: 'Name',
                  onChanged: (String value) {
                    if (_.userNameError.isNotEmpty) {
                      _.userNameError = '';
                    }
                  },
                  errorText: _.userNameError,
                  inputType: TextInputType.name),
              PasswordTextField(
                  controller: _.passwordController,
                  errorText: _.passwordError,
                  obscurePassword: _.obscurePasswordText,
                  label: 'Password',
                  onChanged: (String value) {
                    _.checkPassword(text: value);
                  },
                  validationWidget: const PasswordCheck(),
                  toggleObscureText: () {
                    _.obscurePasswordText = !_.obscurePasswordText;
                  },
                  hintText: '***********'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  label: 'Sign Up',
                  onPressed: () {
                    _.signup();
                  },
                  radius: 12,
                  height: 55,
                  loading: _.requestStatus == RequestStatus.loading,
                  primaryTextTheme: primaryTextTheme,
                  backgroundColor: Theme.of(context).primaryColor,
                  borderColor: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: primaryTextTheme.headline4!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                      onPressed: () {
                        _.goToSignIn();
                      },
                      child: Text(
                        'Sign in',
                        style: primaryTextTheme.headline4!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ))
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
