import 'package:clinaj/core/error/failures.dart';
import 'package:clinaj/core/parameters/signup/signin_params.dart';
import 'package:dartz/dartz.dart';

abstract class SigninRepository {
  Future<Either<Failure, String>> emailSignup({required SigninParams params});
}
