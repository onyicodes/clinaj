import 'package:clinaj/app/features/signin/domain/entities/signin_entity.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:clinaj/core/parameters/signup/signin_params.dart';
import 'package:dartz/dartz.dart';

abstract class SigninRepository {
  Future<Either<Failure,SigninEntity>> emailSignup({required SigninParams params});
}
