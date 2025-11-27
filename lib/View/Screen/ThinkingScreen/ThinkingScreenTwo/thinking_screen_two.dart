import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/View/Widget/CustomBotton/custom_botton.dart';
import 'package:flutter_interview_task/View/Widget/CustomTextFeild/custom_text_feild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Utils/AppColors/app_colors.dart';
import '../../../../Utils/StaticString/static_string.dart';
import '../../../Widget/CustomBottomNavBar/custom_bottom_nav_bar.dart';

class ThinkingScreenTwo extends StatefulWidget {
  const ThinkingScreenTwo({super.key});

  @override
  State<ThinkingScreenTwo> createState() => _ThinkingScreenTwoState();
}

class _ThinkingScreenTwoState extends State<ThinkingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white900,
      appBar: AppBar(
        title: Text(AppString.back),
        leading: Icon(Icons.arrow_circle_left_outlined),
        backgroundColor: AppColor.white900,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppString.wellDone, style: TextStyle(fontSize: 18)),

            SizedBox(height: 15.h),
            //=-=-=-=-=-=-=-Category plus Timer Row=-=-=-=-=-=-=//
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.blue900.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    AppString.vocabulary,
                    style: TextStyle(
                      color: AppColor.blue900,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),

            //=-=-=-=-=-=-=-=-Question Container=-=-=-=-=-=-=-==-//
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.sp,
                        height: 1.5,
                      ),
                      children: [TextSpan(text: AppString.myDogIsLittle)],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: AppString.timid,
              trailingIcon: Icons.g_mobiledata,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.explanation,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(AppString.chineseText, style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  Text(AppString.chineseTextTwo, style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  Text(AppString.chineseTextThree, style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            CustomButton(text: AppString.continueText, color: AppColor.blue900,onTap: (){
              Get.toNamed(AppRoute.profileScreen);
            },)
          ],
        ),
      ),
    );
  }
}
