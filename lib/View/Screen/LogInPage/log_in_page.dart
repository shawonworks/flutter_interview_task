import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_interview_task/View/Widget/CustomRoleTabBar/custom_role_tab_bar.dart';
import 'package:flutter_interview_task/View/Widget/CustomText/custom_text.dart';
import 'package:flutter_interview_task/View/Widget/CustomTextFeild/custom_text_feild.dart';

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
      backgroundColor: AppColor.white900,
      body: Column(
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
                CustomTextField(hintText: AppString.emailText),
                const SizedBox(height: 12),
                CustomText(text: AppString.password),
                const SizedBox(height: 6),
                CustomTextField(hintText: "", obscureText: true,)
                
              ],
            ),
          )


        ],
      ),
    );
  }
}
