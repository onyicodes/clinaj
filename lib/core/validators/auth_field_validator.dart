import 'package:clinaj/app/features/signup/presentation/bindings/signup_binding.dart';
import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:clinaj/core/constants/error_texts.dart';
import 'package:clinaj/core/parameters/signup/email_signup_params.dart';

final signupController = getSignupControllerSl<SignupController>();

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
    if (params.password.isEmpty) {
      signupController.passwordError = AuthErrorMessage.passwordEmpty;
      validated = false;
    }

    return Future.value(validated);
  }

 
}