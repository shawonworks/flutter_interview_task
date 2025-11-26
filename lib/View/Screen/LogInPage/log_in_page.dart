import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_interview_task/View/Widget/CustomBotton/custom_botton.dart';
import 'package:flutter_interview_task/View/Widget/CustomRoleTabBar/custom_role_tab_bar.dart';
import 'package:flutter_interview_task/View/Widget/CustomText/custom_text.dart';
import 'package:flutter_interview_task/View/Widget/CustomTextFeild/custom_text_feild.dart';
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
            const SizedBox(height: 6),
            const Center(
              child: Text(
                AppString.logIn,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 6),
            const CustomRoleTab(),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomText(text: AppString.email),
                  const SizedBox(height: 6),
                  CustomTextField(hintText: AppString.emailText, keyboardType: TextInputType.emailAddress,),
                  const SizedBox(height: 12),
                  CustomText(text: AppString.password, ),
                  const SizedBox(height: 6),
                  CustomTextField(hintText: "", obscureText: true, keyboardType: TextInputType.phone,),
                  const SizedBox(height: 12),
                  GestureDetector(
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
                  const SizedBox(height: 16),
                  CustomButton(text: AppString.logIn, color: AppColor.blue900),
                  const SizedBox(height: 16),
                  CustomButton(
                    text: AppString.loginWithGoogle,
                    icon: Icons.g_mobiledata,
                    color: AppColor.white900,
                    textColor: AppColor.black600,
                    borderColor: Colors.blueGrey,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppString.newToLearnova),
                      const SizedBox(width: 6),
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
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
