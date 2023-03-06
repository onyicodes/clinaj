import 'package:clinaj/app/features/explore/data/datasources/explore_content_data_provider.dart';
import 'package:clinaj/app/features/explore/domain/repositories/explore_repository.dart';
import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:clinaj/core/entities/vendors_entity.dart';
import 'package:clinaj/core/error/failures.dart';
import 'package:dartz/dartz.dart';

class ExploreRepositoryImpl extends ExploreRepository {
  final ExploreDataSource api;

  ExploreRepositoryImpl({required this.api});

  @override
  Future<Either<Failure, List<VendorsEntity>>> fetchPopular() async {
    try {
      List<VendorsEntity> buyerContentList = await api.fetchPopular();
      return Right(buyerContentList);
    } catch (e) {
      print(e);
      return Left(UnKnownFailure());
    }
  }

  @override
  Future<Either<Failure, List<OnboardContentEntity>>> search() async {
    try {
      List<OnboardContentEntity> sellerContentList = await api.search();
      return Right(sellerContentList);
    } catch (e) {
      print(e);
      return Left(UnKnownFailure());
    }
  }

  @override
  Future<Either<Failure, List<OnboardContentEntity>>> fetchCategories() async {
    try {
      List<OnboardContentEntity> sellerContentList =
          await api.fetchCategories();
      return Right(sellerContentList);
    } catch (e) {
      print(e);
      return Left(UnKnownFailure());
    }
  }

  @override
  Future<Either<Failure, List<OnboardContentEntity>>> fetchFeatured() async {
    try {
      List<OnboardContentEntity> sellerContentList = await api.fetchFeatured();
      return Right(sellerContentList);
    } catch (e) {
      print(e);
      return Left(UnKnownFailure());
    }
  }

  @override
  Future<Either<Failure, List<OnboardContentEntity>>> fetchLive() async {
    try {
      List<OnboardContentEntity> sellerContentList = await api.fetchLive();
      return Right(sellerContentList);
    } catch (e) {
      print(e);
      return Left(UnKnownFailure());
    }
  }
}
