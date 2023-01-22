import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:clinaj/app/features/signup/presentation/widgets/password_check.dart';
import 'package:clinaj/app/features/signup/presentation/widgets/social_signups.dart';
import 'package:clinaj/app/routes/app_pages.dart';
import 'package:clinaj/core/constants/request_status.dart';
import 'package:clinaj/core/general_widgets/auth_field/auth_field_divider.dart';
import 'package:clinaj/core/general_widgets/auth_field/custom_auth_field.dart';
import 'package:clinaj/core/general_widgets/auth_field/password_textfield.dart';
import 'package:clinaj/core/general_widgets/auth_field/phone_number_text_field.dart';
import 'package:clinaj/core/general_widgets/button_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
 const  SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Scaffold(
      body: GetX<SignupController>(builder: (_) {
        return ListView(
          children: [
            const SizedBox(
              height: 18,
            ),
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
            PhoneInputTextField(
              controller: _.phoneController,
              errorText: _.phoneError,
              hintText: '0xxxxxxxxxxx',
              label: 'Phone',
              onCountryChanged: (CountryCode country) {
                _.countryDialCode = country.dialCode;
              },
              onChanged: (String value) {
                if (_.phoneError.isNotEmpty) {
                  _.phoneError = '';
                }
              },
            ),
            CustomAuthField(
                controller: _.userNameController,
                hintText: 'Jane Doe',
                label: 'Username',
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
                  if (_.passwordError.isNotEmpty) {
                    _.passwordError = '';
                  }
                },
                validationWidget:const PasswordCheck(),
                toggleObscureText: () {
                  _.obscurePasswordText = !_.obscurePasswordText;
                },
                hintText: '***********'),
           
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomButton(
                label: 'Sign Up',
                onPressed: () {
                  _.signup();
                },
                radius: 25,
                loading: _.requestStatus == RequestStatus.loading,
                primaryTextTheme: primaryTextTheme,
                backgroundColor: Theme.of(context).primaryColor,
                borderColor: Theme.of(context).primaryColor,
              ),
            ),
            const AuthFieldDivider(),
            const SocialSignups(),
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
                      Get.toNamed(Routes.signin);
                    },
                    child: Text(
                      'Login',
                      style: primaryTextTheme.headline4!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ))
              ],
            )
          ],
        );
      }),
    );
  }
}
