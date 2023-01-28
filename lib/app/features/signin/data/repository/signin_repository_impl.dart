import 'package:clinaj/app/features/signin/data/datasources/signin_datasource.dart';
import 'package:clinaj/app/features/signin/domain/repositories/signin_repository.dart';
import 'package:clinaj/core/error/exceptions.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:clinaj/core/parameters/signup/email_signup_params.dart';
import 'package:dartz/dartz.dart';

class SigninRepositoryImpl extends SigninRepository {
  final SigninDataProvider dataProvider;

  SigninRepositoryImpl({required this.dataProvider});

  @override
  Future<Either<Failure, String>> emailSignup(
      {required SignupParams params}) async {
    try {
      String token = await dataProvider.emailSignup(params: params);
      return Right(token);
    } on ServerException {
      return Left(ServerFailure());
    } on NetworkException {
      return Left(NetworkFailure());
    } on AccountException {
      return Left(AccountNotFoundFailure());
    } catch (e) {
      return Left(UnKnownFailure());
    }
  }
}
