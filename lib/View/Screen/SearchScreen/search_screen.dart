import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_interview_task/View/Widget/CustomTextFeild/custom_text_feild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white900,
      appBar: AppBar(
        title: Text(AppString.back),
        leading: Icon(Icons.arrow_circle_left_outlined),
        backgroundColor: AppColor.white900,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0.h.w),
          child: Container(
            height: 350.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0.h.w),
              child: Column(
                children: [
                  CustomTextField(
                    hintText: AppString.search,onTap: (){
                      Get.toNamed(AppRoute.reelDetailsScreen);
                  },
                    trailingIcon: Icons.search,
                  ),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CustomTextField(hintText: AppString.trigonometry),
                        SizedBox(height: 5.h),
                        CustomTextField(hintText: AppString.vocabulary),
                        SizedBox(height: 5.h),
                        CustomTextField(hintText: AppString.grammar),
                        SizedBox(height: 5.h),
                        CustomTextField(hintText: AppString.geography),
                        SizedBox(height: 5.h),
                        CustomTextField(hintText: AppString.xxx),
                        SizedBox(height: 5.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
