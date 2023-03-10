import 'package:clinaj/app/features/signup/data/datasources/signup_datasource.dart';
import 'package:clinaj/app/features/signup/data/repository/signup_repository_impl.dart';
import 'package:clinaj/app/features/signup/domain/repositories/signup_repository.dart';
import 'package:clinaj/app/features/signup/domain/usecases/email_signup_usecase.dart';
import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:clinaj/core/validators/auth_field_validator.dart';
import 'package:get/get.dart';

final getSignupControllerSl = GetInstance();

class SignupBinding implements Bindings {
  @override
  void dependencies() {
    getSignupControllerSl.lazyPut<SignupController>(
        () => SignupController(emailSignupUsecase: getSignupControllerSl(), authFieldValidationPage: getSignupControllerSl(), storeBox: getSignupControllerSl(), secureStorage: getSignupControllerSl()));

    getSignupControllerSl.lazyPut<EmailSignupUsecase>(
        () => EmailSignupUsecase(repository: getSignupControllerSl()));
        

    getSignupControllerSl.lazyPut<AuthFieldValidationPage>(
        () => AuthFieldValidationPage());

    getSignupControllerSl.lazyPut<SignupRepository>(
        () => SignupRepositoryImpl(dataProvider: getSignupControllerSl()));

    getSignupControllerSl.lazyPut<SignupDataProvider>(() => SignupDataProviderImpl());
  }
}
