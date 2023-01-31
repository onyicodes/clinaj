import 'package:clinaj/core/constants/general_constants.dart';
import 'package:clinaj/core/entities/user_entity.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final GetStorage storeBox;
  HomeController({required this.storeBox});

  final _currentPageIndex = 1.obs;
  final _screenWidth = 600.0.obs;
  final _userEntity = UserEntity(
          id: 1,
          email: '',
          username: '',
          phone: '',
          googleId: '',
          facebookId: '',
          twitterId: '',
          appleId: '',
          photo: '',
          dob: DateTime.now(),
          verified: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          role: AccountType.user)
      .obs; //Initialize empty observable userEntity

  int get currentPageIndex => _currentPageIndex.value;
  double get screenWidth => _screenWidth.value;
  UserEntity get userData => _userEntity.value;

  set currentPageIndex(value) => _currentPageIndex.value = value;
  set screenWidth(value) => _screenWidth.value = value;
  set userData(value) => _userEntity.value = value;
}
