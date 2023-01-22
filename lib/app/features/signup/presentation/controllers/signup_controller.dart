import 'dart:async';

import 'package:clinaj/app/features/signup/domain/usecases/email_signup_usecase.dart';
import 'package:clinaj/app/routes/app_pages.dart';
import 'package:clinaj/core/constants/failure_to_error_message.dart';
import 'package:clinaj/core/constants/keys/cache_keys.dart';
import 'package:clinaj/core/constants/request_status.dart';
import 'package:clinaj/core/general_widgets/custom_snackbar.dart';
import 'package:clinaj/core/parameters/signup/email_signup_params.dart';
import 'package:clinaj/core/validators/auth_field_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class SignupController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  final FlutterSecureStorage secureStorage;

  final EmailSignupUsecase emailSignupUsecase;
  final AuthFieldValidationPage authFieldValidationPage;
  final GetStorage storeBox;
  SignupController(
      {required this.emailSignupUsecase,
      required this.authFieldValidationPage,
      required this.secureStorage,
      required this.storeBox});

  RegExp regexSpecialCharater = RegExp(r'^(?=.*?[!@#\$&*~])');
  RegExp regexHas8Characters = RegExp(r'.{8,}$');
  RegExp regexHasUppercase = RegExp(r'^(?=.*[A-Z])');
  RegExp regexHasLowercase = RegExp(r'^(?=.*[a-z])');
  RegExp regexHasNumber = RegExp(r'^(?=.*?[0-9])');

  final _obscurePasswordText = true.obs;
  final _requestStatus = RequestStatus.initial.obs;
  final _phoneError = ''.obs;
  final _userNameError = ''.obs;
  final _passwordError = ''.obs;
  final _emailError = ''.obs;
  final _countryDialCode = '+234'.obs;

  final _has8Characters = false.obs;
  final _hasUppercase = false.obs;
  final _hasLowercase = false.obs;
  final _hasNumber = false.obs;
  final _hasSpecialCharacter = false.obs;

  bool get obscurePasswordText => _obscurePasswordText.value;
  String get phoneError => _phoneError.value;
  String get userNameError => _userNameError.value;
  String get passwordError => _passwordError.value;
  String get emailError => _emailError.value;
  String get countryDialCode => _countryDialCode.value;
  RequestStatus get requestStatus => _requestStatus.value;

  bool get has8Characters => _has8Characters.value;
  bool get hasUppercase => _hasUppercase.value;
  bool get hasLowercase => _hasLowercase.value;
  bool get hasNumber => _hasNumber.value;
  bool get hasSpecialCharacter => _hasSpecialCharacter.value;

  set obscurePasswordText(value) => _obscurePasswordText.value = value;
  set phoneError(value) => _phoneError.value = value;
  set userNameError(value) => _userNameError.value = value;
  set passwordError(value) => _passwordError.value = value;
  set emailError(value) => _emailError.value = value;
  set requestStatus(value) => _requestStatus.value = value;
  set countryDialCode(value) => _countryDialCode.value = value;

  set has8Characters(value) => _has8Characters.value = value;
  set hasUppercase(value) => _hasUppercase.value = value;
  set hasLowercase(value) => _hasLowercase.value = value;
  set hasNumber(value) => _hasNumber.value = value;
  set hasSpecialCharacter(value) => _hasSpecialCharacter.value = value;

  Future<void> goToSignIn() async {
    Get.toNamed(Routes.signin);
  }

  checkPassword({required String text}) {
    regexSpecialCharater.hasMatch(text)
        ? hasSpecialCharacter = true
        : hasSpecialCharacter = false;

    regexHas8Characters.hasMatch(text)
        ? has8Characters = true
        : has8Characters = false;

    regexHasUppercase.hasMatch(text)
        ? hasUppercase = true
        : hasUppercase = false;

    regexHasLowercase.hasMatch(text)
        ? hasLowercase = true
        : hasLowercase = false;
    regexHasNumber.hasMatch(text) ? hasNumber = true : hasNumber = false;
    print(has8Characters);
  }

  Future<void> signup() async {
    requestStatus = RequestStatus.loading;
    final String role = storeBox.read(CacheKeys.accountType);
    SignupParams params = SignupParams(
        email: emailAddressController.text,
        userName: userNameController.text,
        phone: phoneController.text,
        password: passwordController.text,
        countryDialCode: countryDialCode,
        role: role);
    await authFieldValidationPage
        .validateEmailSignupData(params: params)
        .then((validated) async {
      if (validated) {
        final failOrSignup = await emailSignupUsecase(params);
        failOrSignup.fold((fail) {
          customSnackbar(
              title: 'error', message: mapFailureToErrorMessage(fail));
          requestStatus = RequestStatus.error;
        }, (token) {
          requestStatus = RequestStatus.success;
          secureStorage.write(
              key: CacheKeys.username, value: userNameController.text);
          secureStorage.write(
              key: CacheKeys.password, value: passwordController.text);
          Get.toNamed(Routes.verifycode, arguments: token);
        });
      } else {
        requestStatus = RequestStatus.error;
      }
    });
  }

  appleSignup() {
    Get.toNamed(Routes.signup);
  }

  facebookSignup() {
    Get.toNamed(Routes.signup);
  }

  googleSignup() {
    Get.toNamed(Routes.signup);
  }
}
