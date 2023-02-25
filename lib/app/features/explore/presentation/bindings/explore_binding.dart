import 'package:clinaj/app/features/explore/presentation/controllers/explore_controller.dart';
import 'package:clinaj/app/features/onboarding/data/datasources/onboard_content_local_data_source.dart';
import 'package:clinaj/app/features/onboarding/data/repository/onboard_content_repository.dart';
import 'package:clinaj/app/features/onboarding/domain/repositories/onboard_content_repository.dart';
import 'package:clinaj/app/features/onboarding/domain/usecases/onboard_buyer_content_usecase.dart';
import 'package:clinaj/app/features/onboarding/domain/usecases/onboard_seller_content_usecase.dart';
import 'package:get/get.dart';

final onboardingControllerSl = GetInstance();

class ExploreBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ExploreController>(() => ExploreController( storeBox: onboardingControllerSl()));


    onboardingControllerSl.lazyPut<OnboardSellerContentUsecase>(
        () =>OnboardSellerContentUsecase(repository: onboardingControllerSl()));

    onboardingControllerSl.lazyPut<OnboardBuyerContentUsecase>(
        () =>OnboardBuyerContentUsecase(repository: onboardingControllerSl()));

    onboardingControllerSl.lazyPut<OnboardContentRepository>(
        () => OnboardContentRepositoryImpl(api: onboardingControllerSl()));

    onboardingControllerSl.lazyPut<OnboardContentLocalDataSource>(() => OnboardContentLocalDataSourceImpl());
  }
}