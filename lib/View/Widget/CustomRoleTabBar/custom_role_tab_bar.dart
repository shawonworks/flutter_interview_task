import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRoleTab extends StatefulWidget {
  const CustomRoleTab({super.key});

  @override
  State<CustomRoleTab> createState() => _CustomRoleTabState();
}

class _CustomRoleTabState extends State<CustomRoleTab> {
  bool isStudent = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.h),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isStudent = true;
                });
              },
              child: Column(
                children: [
                  Text(
                    AppString.student,
                    style: TextStyle(
                      fontWeight: isStudent ? FontWeight.w700 : FontWeight.w500,
                      color: isStudent ? const Color(0xFF0A6BC8) : Colors.black54,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 3.h,
                    decoration: BoxDecoration(
                      color: isStudent ? const Color(0xFF0A6BC8) : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isStudent = false;
                });
              },
              child: Column(
                children: [
                  Text(
                    AppString.teacher,
                    style: TextStyle(
                      fontWeight: !isStudent ? FontWeight.w700 : FontWeight.w500,
                      color: !isStudent ? const Color(0xFF0A6BC8) : Colors.black54,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 3.h,
                    decoration: BoxDecoration(
                      color: !isStudent ? const Color(0xFF0A6BC8) : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}