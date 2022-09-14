import 'package:get/get.dart';
import 'package:testprog/bindings/home_binding.dart';
import 'package:testprog/constants/route_names.dart';
import 'package:testprog/screens/home_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: RouteNames.DEFAULT,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
