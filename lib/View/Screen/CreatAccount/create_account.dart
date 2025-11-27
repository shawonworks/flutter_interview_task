import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/AppColors/app_colors.dart';
import '../../../Utils/AppImg/app_img.dart';
import '../../../Utils/StaticString/static_string.dart';
import '../../Widget/CustomBotton/custom_botton.dart';
import '../../Widget/CustomRoleTabBar/custom_role_tab_bar.dart';
import '../../Widget/CustomShowDialog/custom_show_dialog.dart';
import '../../Widget/CustomText/custom_text.dart';
import '../../Widget/CustomTextFeild/custom_text_feild.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                AppString.createAccount,
                style: TextStyle(fontSize: 24.h.w, fontWeight: FontWeight.w700),
              ),
            ),
             SizedBox(height: 6.h),
            const CustomRoleTab(),
             SizedBox(height: 6.h),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomText(text: AppString.name),
                  SizedBox(height: 6.h),
                  CustomTextField(hintText: AppString.name, keyboardType: TextInputType.emailAddress,),
                  SizedBox(height: 12.h),
                  CustomText(text: AppString.email, ),
                  SizedBox(height: 6.h),
                  CustomTextField(hintText: AppString.emailText, keyboardType: TextInputType.emailAddress,),
                  SizedBox(height: 12.h),
                  CustomText(text: AppString.password, ),
                  SizedBox(height: 6.h),
                  CustomTextField(hintText: "", obscureText: true, keyboardType: TextInputType.phone,),
                  SizedBox(height: 12.h),
                  CustomText(text: AppString.password, ),
                  SizedBox(height: 6.h),
                  CustomTextField(hintText: "", obscureText: true, keyboardType: TextInputType.phone,),
                  SizedBox(height: 12.h),
                  CustomButton(text: AppString.createAccount, color: AppColor.blue900, onTap: (){
                    ProfileSetupDialog.show();
                  },),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppString.newToLearnova),
                       SizedBox(width: 6.w),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.loginScreen);
                        },
                        child: Text(
                          AppString.logIn,
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
