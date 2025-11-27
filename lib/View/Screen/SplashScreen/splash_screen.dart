import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Core/AppRoute/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigate() async {
    Future.delayed(const Duration(seconds: 3), (){
      Get.toNamed(AppRoute.loginScreen);


    });
  }
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: AppColor.blue700,
  //     body: Center(
  //       child: Container(
  //         height: 200,
  //         width: 200,
  //         decoration: BoxDecoration(
  //           color: Color.fromRGBO(255, 255, 255, 1),
  //           shape: BoxShape.circle,
  //         ),
  //         child: ClipOval(
  //           child: Image.asset(AppImage.logo,fit: BoxFit.cover,),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue700,
      body: Center(
        child: Container(
          height: 180.h,
          width: 180.w,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 5,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: ClipOval(
            child: Image.asset(
              AppImage.logo,
              color: AppColor.teal300,
              fit: BoxFit.contain,
              width: 140.w,
              height: 140.h,
            ),
          ),
        ),
      ),
    );
  }

}

