import 'package:clinaj/app/features/explore/data/datasources/explore_content_data_provider.dart';
import 'package:clinaj/app/features/explore/data/repository/explore_repository.dart';
import 'package:clinaj/app/features/explore/domain/repositories/explore_repository.dart';
import 'package:clinaj/app/features/explore/domain/usecases/fetch_popular_usecase.dart';
import 'package:clinaj/app/features/explore/presentation/controllers/explore_controller.dart';
import 'package:get/get.dart';

final exploreControllerSl = GetInstance();

class ExploreBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ExploreController>(() => ExploreController( storeBox: exploreControllerSl(), fetchPopularUsecase: exploreControllerSl()));


    exploreControllerSl.lazyPut<FetchPopularUsecase>(
        () =>FetchPopularUsecase(repository: exploreControllerSl()));


    exploreControllerSl.lazyPut<ExploreRepository>(
        () => ExploreRepositoryImpl(api: exploreControllerSl()));

    exploreControllerSl.lazyPut<ExploreDataSource>(() => ExploreDataSourceImpl());
  }
}