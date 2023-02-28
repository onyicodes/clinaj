import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class ExploreRepository {
  Future<Either<Failure, List<OnboardContentEntity>>> search();
  Future<Either<Failure, List<OnboardContentEntity>>> fetchPopular();
  Future<Either<Failure, List<OnboardContentEntity>>> fetchLive();
  Future<Either<Failure, List<OnboardContentEntity>>> fetchFeatured();
  Future<Either<Failure, List<OnboardContentEntity>>> fetchCategories();
}
