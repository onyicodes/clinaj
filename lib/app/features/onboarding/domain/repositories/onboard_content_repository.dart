import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class OnboardContentRepository {
  Future<Either<Failure, List<OnboardContentEntity>>> fetchSellerContents();
  Future<Either<Failure, List<OnboardContentEntity>>> fetchBuyerContents();
}
