import 'package:clinaj/app/features/signin/data/datasources/signin_datasource.dart';
import 'package:clinaj/app/features/signin/data/repository/signin_repository_impl.dart';
import 'package:clinaj/app/features/signin/domain/repositories/signin_repository.dart';
import 'package:clinaj/app/features/signin/domain/usecases/email_signin_usecase.dart';
import 'package:clinaj/app/features/signin/presentation/controllers/signin_controller.dart';
import 'package:clinaj/app/features/signup/data/datasources/signup_datasource.dart';
import 'package:clinaj/app/features/signup/data/repository/signup_repository_impl.dart';
import 'package:clinaj/app/features/signup/domain/repositories/signup_repository.dart';
import 'package:clinaj/app/features/signup/domain/usecases/email_signup_usecase.dart';
import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:clinaj/core/validators/auth_field_validator.dart';
import 'package:get/get.dart';

final getSigninControllerSl = GetInstance();

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    getSigninControllerSl.lazyPut<SigninController>(
        () => SigninController(emailSignupUsecase: getSigninControllerSl(), authFieldValidationPage: getSigninControllerSl(), storeBox: getSigninControllerSl(), secureStorage: getSigninControllerSl()));

    getSigninControllerSl.lazyPut<EmailSigninUsecase>(
        () => EmailSigninUsecase(repository: getSigninControllerSl()));
        

    getSigninControllerSl.lazyPut<AuthFieldValidationPage>(
        () => AuthFieldValidationPage());

    getSigninControllerSl.lazyPut<SigninRepository>(
        () => SigninRepositoryImpl(dataProvider: getSigninControllerSl()));

    getSigninControllerSl.lazyPut<SigninDataProvider>(() => SigninDataProviderImpl());
  }
}
