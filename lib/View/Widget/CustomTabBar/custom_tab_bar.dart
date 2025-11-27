import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.maxFinite,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          buildCategory(AppString.all, isSelected: true),
          buildCategory(AppString.chinese),
          buildCategory(AppString.english),
          buildCategory(AppString.maths),
          buildCategory(AppString.chemistry),
        ],
      ),
    );
  }

  Widget buildCategory(String text, {bool isSelected = false}) {
    return Container(
      margin:  EdgeInsets.only(right: 15.h),
      padding:  EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.white,
        borderRadius: BorderRadius.circular(14.w.h),
        boxShadow: [
          if (!isSelected)
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 6.h,
              offset: const Offset(0, 3),
            ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.blue : Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}