import 'package:clinaj/app/features/signup/domain/repositories/signup_repository.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:clinaj/core/parameters/signup/email_signup_params.dart';
import 'package:clinaj/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

class EmailSignupUsecase extends UseCase<String, SignupParams> {
  final SignupRepository repository;

  EmailSignupUsecase({required this.repository});

  @override
  Future<Either<Failure, String>> call(SignupParams params) async {
    return await repository.emailSignup(params: params);
  }
}
