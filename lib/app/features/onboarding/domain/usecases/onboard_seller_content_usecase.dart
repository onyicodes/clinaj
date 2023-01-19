import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:clinaj/app/features/onboarding/domain/repositories/onboard_content_repository.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:clinaj/core/parameters/no_params.dart';
import 'package:clinaj/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

class OnboardSellerContentUsecase extends UseCase<List<OnboardContentEntity>, NoParams> {
  final OnboardContentRepository repository;

  OnboardSellerContentUsecase({required this.repository});

  @override
  Future<Either<Failure, List<OnboardContentEntity>>> call(NoParams params) async {
    return await repository.fetchSellerContents();
  }
}
