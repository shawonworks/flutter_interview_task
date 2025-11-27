import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_interview_task/View/Widget/CustomBotton/custom_botton.dart';
import 'package:flutter_interview_task/View/Widget/CustomRoleTabBar/custom_role_tab_bar.dart';
import 'package:flutter_interview_task/View/Widget/CustomText/custom_text.dart';
import 'package:flutter_interview_task/View/Widget/CustomTextFeild/custom_text_feild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/StaticString/static_string.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.white900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImage.card),
            SizedBox(height: 6.h),
             Center(
              child: Text(
                AppString.logIn,
                style: TextStyle(fontSize: 24.h.w, fontWeight: FontWeight.w700),
              ),
            ),
             SizedBox(height: 6.h),
            const CustomRoleTab(),
             SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.all(20.h.w),
              child: Column(
                children: [
                  CustomText(text: AppString.email),
                   SizedBox(height: 6.h),
                  CustomTextField(hintText: AppString.emailText, keyboardType: TextInputType.emailAddress,),
                   SizedBox(height: 12.h),
                  CustomText(text: AppString.password, ),
                  SizedBox(height: 6.h),
                  CustomTextField(hintText: "", obscureText: true, keyboardType: TextInputType.phone,),
                  SizedBox(height: 12.h),
                  GestureDetector(
                    //=-=-=-=-=-==-=-=Create Account NNavigate=-=--=-=-==-=-=-=-=-=-//
                    onTap: (){
                      Get.toNamed(AppRoute.createAccount);
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        AppString.forgotPassword,
                        style: TextStyle(color: AppColor.blue700),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomButton(text: AppString.logIn, color: AppColor.blue900,onTap: (){
                    Get.toNamed(AppRoute.allScreen);
                  },),
                  SizedBox(height: 16.h),
                  CustomButton(
                    text: AppString.loginWithGoogle,
                    icon: Icons.g_mobiledata,
                    color: AppColor.white900,
                    textColor: AppColor.black600,
                    borderColor: Colors.blueGrey,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppString.newToLearnova),
                      SizedBox(width: 6.w),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.createAccount);

                        },
                        child: Text(
                          AppString.createAnAccount,
                          style: TextStyle(color: AppColor.blue700),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
