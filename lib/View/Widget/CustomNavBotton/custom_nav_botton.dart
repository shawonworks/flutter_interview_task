import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonTwo extends StatefulWidget {
  const CustomButtonTwo({super.key});

  @override
  State<CustomButtonTwo> createState() => _CustomButtonTwoState();
}

class _CustomButtonTwoState extends State<CustomButtonTwo> {
  bool isLoginTapped = true;

  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // ---------- First Button ----------
          GestureDetector(
            onTap: () {
              isLoginTapped = true;
              update();
            },
            child: Container(
              alignment: Alignment.center,
              height: 35.h,
              width: 120.w,
              decoration: BoxDecoration(
                color: isLoginTapped ? AppColor.blue700 : AppColor.white900,
                borderRadius: BorderRadius.circular(16.h),
                border: Border.all(color: Colors.black12),
              ),
              child: Text(
                AppString.getBackToIt,
                style: TextStyle(
                  fontSize: 15.h,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // const SizedBox(width: 5),

          // ---------- Second Button ----------
          GestureDetector(
            onTap: () {
              isLoginTapped = false;
              update();
            },
            child: Container(
              alignment: Alignment.center,
              height: 38.h,
              width: 120.w,
              decoration: BoxDecoration(
                color: isLoginTapped ? AppColor.white900 : AppColor.blue700,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black12),
              ),
              child: Text(
                AppString.courseDetails,
                style: TextStyle(
                  fontSize: 15.h,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
