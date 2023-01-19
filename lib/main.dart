import 'package:clinaj/app/features/app/presentation/pages/app.dart';
import 'package:clinaj/app/getx_managers/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthService());
  runApp(const App());
}