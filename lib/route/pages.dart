import 'package:get/get.dart';
import 'package:project/pages/homePage/home_binding.dart';
import 'package:project/pages/homePage/home_view.dart';
import 'package:project/pages/loginPage/login_binding.dart';
import 'package:project/pages/loginPage/login_view.dart';
import 'package:project/route/routes.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
        name: Routes.loginPage,
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(
        name: Routes.homePage, page: () => HomeView(), binding: HomeBinding())
  ];
}
