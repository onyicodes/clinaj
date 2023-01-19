import 'dart:convert';

import 'package:clinaj/app/features/onboarding/data/model/onboard_seller_content_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/connect.dart';

const baseUrl = 'https://www.olevelgurusapp.com/v3/index/languages';

abstract class OnboardContentLocalDataSource extends GetConnect {
  Future<List<OnboardContentModel>> fetchSellerContents();
  Future<List<OnboardContentModel>> fetchBuyerContents();
}

class OnboardContentLocalDataSourceImpl extends OnboardContentLocalDataSource {
// Get request
  @override
  Future<List<OnboardContentModel>> fetchSellerContents() async {
    final String response = await rootBundle
        .loadString('assets/json_contents/onboarding/seller_contents.json');

    final List<dynamic> jsonStringContentList;
    jsonStringContentList = jsonDecode(response);
    final List<OnboardContentModel> onboardContentModelList =
        <OnboardContentModel>[];

    for (var onboardContent in jsonStringContentList) {
      onboardContentModelList.add(OnboardContentModel.fromJson(onboardContent));
    }
    return onboardContentModelList;
  }

  @override
  Future<List<OnboardContentModel>> fetchBuyerContents() async {
    final String response = await rootBundle
        .loadString('assets/json_contents/onboarding/buyer_contents.json');

    final List<dynamic> jsonStringContentList;
    jsonStringContentList = jsonDecode(response);
    final List<OnboardContentModel> onboardContentModelList =
        <OnboardContentModel>[];

    for (var onboardContent in jsonStringContentList) {
      onboardContentModelList.add(OnboardContentModel.fromJson(onboardContent));
    }
    return onboardContentModelList;
  }
}
