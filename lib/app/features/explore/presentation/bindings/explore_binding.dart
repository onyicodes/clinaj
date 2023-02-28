import 'package:clinaj/app/features/explore/data/datasources/explore_content_data_provider.dart';
import 'package:clinaj/app/features/explore/data/repository/explore_repository.dart';
import 'package:clinaj/app/features/explore/domain/repositories/explore_repository.dart';
import 'package:clinaj/app/features/explore/domain/usecases/fetch_popular_usecase.dart';
import 'package:clinaj/app/features/explore/presentation/controllers/explore_controller.dart';
import 'package:get/get.dart';

final onboardingControllerSl = GetInstance();

class ExploreBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ExploreController>(() => ExploreController( storeBox: onboardingControllerSl()));


    onboardingControllerSl.lazyPut<FetchPopularUsecase>(
        () =>FetchPopularUsecase(repository: onboardingControllerSl()));


    onboardingControllerSl.lazyPut<ExploreRepository>(
        () => ExploreRepositoryImpl(api: onboardingControllerSl()));

    onboardingControllerSl.lazyPut<ExploreDataSource>(() => ExploreDataSourceImpl());
  }
}