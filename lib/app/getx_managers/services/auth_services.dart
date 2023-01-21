import 'package:clinaj/core/constants/keys/cache_keys.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetxService {
  GetStorage storeBox = GetStorage();

  bool isLoggedIn() {
    bool? accessToken = storeBox.read(CacheKeys.isLoggedIn);
    return accessToken ?? false;
  }

  bool hasOnboarded() {
    bool? userOnboarded = storeBox.read(CacheKeys.hasOnboarded);
    return  false;
  }
}
