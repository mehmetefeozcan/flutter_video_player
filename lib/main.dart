import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'constants/app_pages.dart';
import 'constants/route_names.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: RouteNames.DEFAULT,
    );
  }
}
