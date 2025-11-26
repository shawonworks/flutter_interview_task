import 'package:flutter/material.dart';

import '../../../Utils/AppColors/app_colors.dart';
import '../../../Utils/AppImg/app_img.dart';
import '../../../Utils/StaticString/static_string.dart';
import '../../Widget/CustomBotton/custom_botton.dart';
import '../../Widget/CustomRoleTabBar/custom_role_tab_bar.dart';
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
            const SizedBox(height: 6),
            const Center(
              child: Text(
                AppString.createAccount,
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
                  CustomText(text: AppString.name),
                  const SizedBox(height: 6),
                  CustomTextField(hintText: AppString.name, keyboardType: TextInputType.emailAddress,),
                  const SizedBox(height: 12),
                  CustomText(text: AppString.email, ),
                  const SizedBox(height: 6),
                  CustomTextField(hintText: AppString.emailText, keyboardType: TextInputType.emailAddress,),
                  const SizedBox(height: 12),
                  CustomText(text: AppString.password, ),
                  const SizedBox(height: 6),
                  CustomTextField(hintText: "", obscureText: true, keyboardType: TextInputType.phone,),
                  const SizedBox(height: 12),
                  CustomText(text: AppString.password, ),
                  const SizedBox(height: 6),
                  CustomTextField(hintText: "", obscureText: true, keyboardType: TextInputType.phone,),
                  const SizedBox(height: 12),
                  CustomButton(text: AppString.createAccount, color: AppColor.blue900),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppString.newToLearnova),
                      const SizedBox(width: 6),
                      Text(
                        AppString.logIn,
                        style: TextStyle(color: AppColor.blue700),
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
