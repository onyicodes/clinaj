import 'package:clinaj/app/features/signin/data/model/signin_model.dart';
import 'package:clinaj/app/features/signin/domain/entities/signin_entity.dart';
import 'package:clinaj/app/features/signin/domain/repositories/signin_repository.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:clinaj/core/parameters/signup/signin_params.dart';
import 'package:clinaj/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

class EmailSigninUsecase extends UseCase<SigninEntity, SigninParams> {
  final SigninRepository repository;

  EmailSigninUsecase({required this.repository});

  @override
  Future<Either<Failure, SigninEntity>> call(SigninParams params) async {
    return await repository.emailSignup(params: params);
  }
}
