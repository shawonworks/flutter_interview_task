import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Core/AppRoute/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // defaultTransition: Transition.fadeIn,
      // transitionDuration: Duration(milliseconds: 200),
      navigatorKey: Get.key,

      initialRoute: AppRoute.loginScreen,
      getPages: AppRoute.routes,
      // getPages: AppRoute.routes,
    );
  }
}
