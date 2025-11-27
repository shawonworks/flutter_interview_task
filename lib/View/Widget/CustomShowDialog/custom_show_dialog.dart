// lib/dialogs/profile_setup_dialog.dart

import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_interview_task/View/Widget/CustomBotton/custom_botton.dart';
import 'package:flutter_interview_task/View/Widget/CustomText/custom_text.dart';
import 'package:flutter_interview_task/View/Widget/CustomTextFeild/custom_text_feild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileSetupDialog {
  static void show() {
    Get.dialog(
      const ProfileSetupScreen(),
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.3),
      useSafeArea: true,
    );
  }
}

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.all(20.h.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28.h.w),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0.h.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 30.h),
                Text(
                  AppString.personalizingCourse,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1.3.h,
                  ),
                ),
                SizedBox(height: 30.h),
                CustomText(text: AppString.currentSchool),
                SizedBox(height: 6.h),
                CustomTextField(hintText: AppString.diocesanBoysSchool),
                SizedBox(height: 10.h),
                CustomText(text: AppString.electiveSubject),
                SizedBox(height: 6.h),
                CustomTextField(hintText: AppString.diocesanBoysSchool),
                 SizedBox(height: 10.h),
                CustomText(text: AppString.currentGrade),
                SizedBox(height: 6.h),
                CustomTextField(
                  hintText: AppString.primary5,
                  trailingIcon: Icons.keyboard_arrow_down_sharp,
                  dropdownItems: [
                    AppString.primary1,
                    AppString.primary2,
                    AppString.primary3,
                    AppString.primary4,
                    AppString.primary5,
                  ],
                ),
                 SizedBox(height: 10.h),
                CustomText(text: AppString.howDidYouHearAboutUs),
                SizedBox(height: 6.h),
                CustomTextField(
                  hintText: AppString.friends,
                  trailingIcon: Icons.keyboard_arrow_down_sharp,
                  dropdownItems: [
                    AppString.instagram,
                    AppString.medium,
                    AppString.threads,
                    AppString.friends,
                    AppString.school,
                    AppString.teacher,
                    AppString.others,
                  ],
                ),
                 SizedBox(height: 140.h),
                CustomButton(onTap: (){
                  //=-=-==-=-=-===-=-Home Screen Navigate=-=--=-==-=-=-==-==-//
                  Get.toNamed(AppRoute.homeScreen);
                },text: AppString.getStarted, color: AppColor.blue900),
                 SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
