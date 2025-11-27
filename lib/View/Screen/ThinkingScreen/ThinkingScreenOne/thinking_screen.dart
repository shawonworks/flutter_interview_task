import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_interview_task/View/Widget/CustomBottomNavBar/custom_bottom_nav_bar.dart';
import 'package:flutter_interview_task/View/Widget/CustomBotton/custom_botton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ThinkingScreen extends StatefulWidget {
  const ThinkingScreen({super.key});

  @override
  State<ThinkingScreen> createState() => _ThinkingScreenState();
}

class _ThinkingScreenState extends State<ThinkingScreen> {
  int currentIndex = 2;
  int selectedOption = 2;
  int timeLeft = 23;

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
            Text(AppString.letsTestYourUnderstanding,style: TextStyle(fontSize: 18),),

            SizedBox(height: 15.h,),
            //=-=-=-=-=-=-=-Category plus Timer Row=-=-=-=-=-=-=//
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.timer_outlined,
                          color: Colors.orange, size: 18.r),
                      SizedBox(width: 6.w),
                      Text(
                        "$timeLeft.03s",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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
                      children: [
                        TextSpan(text: AppString.myDogIsLittle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),

            //=-=-=-=-=-=-=-=-=--Category Options Generate=-=-=-=-=-=-=-=-=-//
            ...List.generate(4, (index) => _buildOption(index)),
            Spacer(),
            SizedBox(height: 10.h,),
            CustomButton(text: AppString.next, color: AppColor.blue900,onTap: (){
              Get.toNamed(AppRoute.thinkingScreenTwo);
            },)
          ],
        ),
      ),
      bottomNavigationBar: CustomBoomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          print("Bottom Nav Tapped: $index");
        },
      ),
    );
  }

  // Option Widget
  Widget _buildOption(int index) {
    List<String> options = [
      AppString.scared,
      AppString.frightening,
      AppString.timid,
      AppString.concerned
    ];
    List<String> letters = ["A", "B", "C", "D"];

    bool isSelected = selectedOption == index;
    bool isCorrect = index == 2;

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedOption = index;
          });
          print("Option ${letters[index]} selected");
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: isSelected
                ? (isCorrect ? Colors.blue.withOpacity(0.1) : Colors.blue.withOpacity(0.1))
                : Colors.grey.shade50,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: isSelected
                  ? (isCorrect ? AppColor.blue700 : AppColor.blue900)
                  : Colors.grey.shade200,
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 24.w,
                height: 24.h,
                decoration: BoxDecoration(
                  color: isSelected ? (isCorrect ? AppColor.blue700 : AppColor.blue900) : Colors.white,
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: isSelected
                        ? (isCorrect ? Colors.green : AppColor.blue900)
                        : Colors.grey.shade300,
                  ),
                ),
                child: Center(
                  child: Text(
                    letters[index],
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white
                          : Colors.grey.shade600,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  options[index],
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}