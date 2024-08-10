import 'package:get/get.dart';
import 'package:project/pages/homePage/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
