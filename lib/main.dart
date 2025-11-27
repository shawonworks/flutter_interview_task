import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Core/AppRoute/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (_, context) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          defaultTransition: Transition.fadeIn,
          transitionDuration: Duration(milliseconds: 200),
          navigatorKey: Get.key,

          initialRoute: AppRoute.splashScreen,
          getPages: AppRoute.routes,
          //getPages: AppRoute.routes,
        );
      },
    );
  }
}
