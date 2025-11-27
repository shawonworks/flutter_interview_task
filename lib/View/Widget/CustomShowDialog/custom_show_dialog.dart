// lib/dialogs/profile_setup_dialog.dart

import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_interview_task/View/Widget/CustomBotton/custom_botton.dart';
import 'package:flutter_interview_task/View/Widget/CustomText/custom_text.dart';
import 'package:flutter_interview_task/View/Widget/CustomTextFeild/custom_text_feild.dart';
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
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 30),
                const Text(
                  AppString.personalizingCourse,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 30),
                CustomText(text: AppString.currentSchool),
                const SizedBox(height: 6),
                CustomTextField(hintText: AppString.diocesanBoysSchool),
                const SizedBox(height: 10),
                CustomText(text: AppString.electiveSubject),
                const SizedBox(height: 6),
                CustomTextField(hintText: AppString.diocesanBoysSchool),
                const SizedBox(height: 10),
                CustomText(text: AppString.currentGrade),
                const SizedBox(height: 6),
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
                const SizedBox(height: 10),
                CustomText(text: AppString.howDidYouHearAboutUs),
                const SizedBox(height: 6),
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
                const SizedBox(height: 210),
                CustomButton(onTap: ,text: AppString.getStarted, color: AppColor.blue900),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
