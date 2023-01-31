import 'package:clinaj/app/features/home/presentation/controllers/home_controller.dart';
import 'package:get/get.dart';

final homeControllerSl = GetInstance();

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(storeBox: homeControllerSl()));
  }
}
