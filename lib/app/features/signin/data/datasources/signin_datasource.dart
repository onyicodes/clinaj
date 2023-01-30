import 'dart:convert';

import 'package:clinaj/core/constants/api_url/api_url.dart';
import 'package:clinaj/core/error/exceptions.dart';
import 'package:clinaj/core/parameters/signup/email_signup_params.dart';
import 'package:clinaj/core/parameters/signup/signin_params.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/connect.dart';

const baseUrl = 'https://www.olevelgurusapp.com/v3/index/languages';

abstract class SigninDataProvider extends GetConnect {
  Future<String> emailSignin({required SigninParams params});
}

class SigninDataProviderImpl extends SigninDataProvider {
// Get request
  @override
  Future<String> emailSignin({required SigninParams params}) async {
    Map<String, String> signupField;

    signupField = {'email': params.email, 'password': params.password};

    const String signinUrl = ApiUrls.baseUrl + ApiUrls.signin;

    final String dummyResponse = await rootBundle
        .loadString('assets/json_contents/auth/registration_response.json');
    //final Response response = await post(signupUrl, signupField);

    //if (response.statusCode == 200) {
    final Map<String, dynamic> jsonString;

    //jsonString = response.body;
    jsonString = jsonDecode(dummyResponse);
    if (jsonString['success']) {
      final String token = jsonString['data']['token'];

      return token;
    } else {
      throw UnknownException();
    }
    // } else {
    //   throw ServerException();
    //}
  }
}
