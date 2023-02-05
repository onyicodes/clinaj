import 'package:clinaj/app/features/onboarding/data/datasources/onboard_content_local_data_source.dart';
import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:clinaj/app/features/onboarding/domain/repositories/onboard_content_repository.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:dartz/dartz.dart';

class OnboardContentRepositoryImpl extends OnboardContentRepository {
  final OnboardContentLocalDataSource api;

  OnboardContentRepositoryImpl({required this.api});

  @override
  Future<Either<Failure, List<OnboardContentEntity>>>
      fetchBuyerContents() async {
    try {
      List<OnboardContentEntity> buyerContentList =
          await api.fetchBuyerContents();
      return Right(buyerContentList);
    } catch (e) {
      return Left(UnKnownFailure());
    }
  }

  @override
  Future<Either<Failure, List<OnboardContentEntity>>> onboardUser() async {
    try {
      List<OnboardContentEntity> sellerContentList = await api.onboardUser();
      return Right(sellerContentList);
    } catch (e) {
      print(e);
      return Left(UnKnownFailure());
    }
  }
}
