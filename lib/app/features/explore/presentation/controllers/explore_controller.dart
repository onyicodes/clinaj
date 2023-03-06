import 'package:clinaj/app/features/explore/domain/usecases/fetch_popular_usecase.dart';
import 'package:clinaj/app/features/onboarding/domain/entities/onboarding_content_entity.dart';
import 'package:clinaj/app/routes/app_pages.dart';
import 'package:clinaj/core/constants/failure_to_error_message.dart';
import 'package:clinaj/core/constants/request_status.dart';
import 'package:clinaj/core/entities/vendors_entity.dart';
import 'package:clinaj/core/general_widgets/custom_snackbar.dart';
import 'package:clinaj/core/parameters/no_params.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ExploreController extends GetxController {
  final GetStorage storeBox;
  final FetchPopularUsecase fetchPopularUsecase;

  ExploreController(
      {required this.storeBox, required this.fetchPopularUsecase});

  final PageController pageController = PageController();

  final _accountType = ''.obs;
  final _page = 0.obs;
  final _contentList = <OnboardContentEntity>[].obs;
  final _dealsRequestStatus = RequestStatus.initial.obs;
  final _dealsList = <VendorsEntity>[].obs;
  final _promotedDealsList = <VendorsEntity>[].obs;

  List<VendorsEntity> get popularVendorsEntityList => _dealsList;
  List<VendorsEntity> get promotedDealsList => _promotedDealsList;
  get accountType => _accountType.value;
  int get page => _page.value;
  List<OnboardContentEntity> get contentList => _contentList;
  RequestStatus get popularVendorsRequestStatus => _dealsRequestStatus.value;

  set popularVendorsEntityList(value) => _dealsList.value = value;
  set promotedDealsList(value) => _promotedDealsList.value = value;
  set contentList(value) => _contentList.value = value;
  set accountType(value) => _accountType.value = value;
  set popularVendorsRequestStatus(value) => _dealsRequestStatus.value = value;
  set page(value) => _page.value = value;

  @override
  void onInit() {
    super.onInit();
    getDeals();
  }

  getDeals() async {
    popularVendorsRequestStatus = RequestStatus.loading;
    await Future.delayed(const Duration(seconds: 3));
    final failOrFetchDeals = await fetchPopularUsecase(NoParams());
    failOrFetchDeals.fold((failure) {
      popularVendorsRequestStatus = RequestStatus.error;
      customSnackbar(
          title: 'Error', message: mapFailureToErrorMessage(failure));
    }, (vendorsEntityList) {
      popularVendorsEntityList = vendorsEntityList;
      popularVendorsRequestStatus = RequestStatus.success;
    });
  }

  toSignupPage() async {
    // storeBox.write(CacheKeys.hasOnboarded, true);
    Get.offAndToNamed(Routes.signup);
  }
}
