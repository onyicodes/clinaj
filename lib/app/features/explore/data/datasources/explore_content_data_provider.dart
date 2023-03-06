import 'dart:convert';

import 'package:clinaj/app/features/onboarding/data/model/onboard_seller_content_model.dart';
import 'package:clinaj/core/entities/vendors_entity.dart';
import 'package:clinaj/core/models/vendors_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/connect.dart';

const baseUrl = 'https://www.olevelgurusapp.com/v3/index/languages';

abstract class ExploreDataSource extends GetConnect {
  Future<List<OnboardContentModel>> search();
  Future<List<VendorsEntity>> fetchPopular();
  Future<List<OnboardContentModel>> fetchFeatured();
  Future<List<OnboardContentModel>> fetchLive();
  Future<List<OnboardContentModel>> fetchCategories();
}

class ExploreDataSourceImpl extends ExploreDataSource {
// Get request
  @override
  Future<List<OnboardContentModel>> search() async {
    final String response = await rootBundle
        .loadString('assets/json_contents/onboarding/onboard_data.json');

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
  Future<List<VendorsEntity>> fetchPopular() async {
    final String response = await rootBundle
        .loadString('assets/json_contents/vendors/vendors.json');

    final Map<String, dynamic> jsonStringContentList;
    jsonStringContentList = jsonDecode(response);
    final List<VendorsEntity> vendorsModelList =
        <VendorsEntity>[];

    for (var vendor in jsonStringContentList["data"]) {
      vendorsModelList.add(VendorsModel.fromMap(vendor));
    }
    return vendorsModelList;
  }

  @override
  Future<List<OnboardContentModel>> fetchFeatured() async {
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

  @override
  Future<List<OnboardContentModel>> fetchLive() async {
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

  @override
  Future<List<OnboardContentModel>> fetchCategories() async {
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
