import 'package:clinaj/app/features/signin/presentation/bindings/signin_binding.dart';
import 'package:clinaj/app/features/signin/presentation/controllers/signin_controller.dart';
import 'package:clinaj/app/features/signup/presentation/bindings/signup_binding.dart';
import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:clinaj/core/constants/error_texts.dart';
import 'package:clinaj/core/parameters/signup/email_signup_params.dart';
import 'package:clinaj/core/parameters/signup/signin_params.dart';
import 'package:email_validator/email_validator.dart';

final signupController = getSignupControllerSl<SignupController>();
final signinController = getSigninControllerSl<SigninController>();


class AuthFieldValidationPage {
  Future<bool> validateEmailSignupData({required SignupParams params}) {
    bool validated = true;
    if (params.userName.isEmpty) {
      signupController.userNameError = AuthErrorMessage.userNameEmpty;
      validated = false;
    }

    if (params.email.isEmpty) {
      signupController.emailError = AuthErrorMessage.emailEmpty;
      validated = false;
    }

    if(!EmailValidator.validate(params.email)){
      signupController.emailError = AuthErrorMessage.emailFormatWrong;
      validated = false;
    }
    if (params.password.isEmpty) {
      signupController.passwordError = AuthErrorMessage.passwordEmpty;
      validated = false;
    }

    return Future.value(validated);
  }


  Future<bool> validateEmailSigninData({required SigninParams params}) {
    bool validated = true;
    if (params.user.isEmpty) {
      signupController.emailError = AuthErrorMessage.fieldEmpty;
      validated = false;
    }

    if (params.user.isEmpty) {
      signupController.emailError = AuthErrorMessage.phoneEmpty;
      validated = false;
    }
    if (params.password.isEmpty) {
      signupController.passwordError = AuthErrorMessage.passwordEmpty;
      validated = false;
    }

    return Future.value(validated);
  }

 
}
