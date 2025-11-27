import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_interview_task/View/Widget/CustomBottomNavBar/custom_bottom_nav_bar.dart';
import 'package:flutter_interview_task/View/Widget/CustomNavBotton/custom_nav_botton.dart';
import 'package:flutter_interview_task/View/Widget/CustomRoleTabBar/custom_role_tab_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white900,
      appBar: AppBar(
        title: Text(AppString.back),
        leading: Icon(Icons.arrow_circle_left_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.settings),
          ),
        ],
        backgroundColor: AppColor.white900,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //=-=-=-=-==-=-=-=--=Profile Header=--=-=-=-=-=-=//
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //=-=-=-=-=-==-=-==-Profile Picture=-=-=-=-=-=-=--=-//
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(AppImage.profileImg),
                ),
                SizedBox(width: 16.w),

                //=-=-=-=-=-=-=-=-=-Profile Info=-=-=-=-=-=-=-//
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.jessicaRoy,
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        AppString.jessicaRoy,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: _buildProgressCard("05", "In Progress", Colors.orange),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: _buildProgressCard("01", "Completed", Colors.green),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: _buildProgressCard(
                    "50",
                    "Following",
                    AppColor.blue900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),

            //=-=-=-=-=-=-=-=-=-=-=My Courses Section=-=-=-=-=-=-=-==-//
            Text(
              AppString.myCourses,
              style: TextStyle(fontSize: 20.sp, color: Colors.black),
            ),
            SizedBox(height: 10.h),

            // Course Container (Fixed)
            Container(
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          AppString.englishTenses,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(AppString.minsAgo32),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(AppString.levelIntermediate),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18.r,
                          backgroundImage: AssetImage(AppImage.profileImgTwo),
                        ),
                        SizedBox(width: 10),
                        Text(AppString.denisaOzel),
                      ],
                    ),
                    SizedBox(height: 15),
                    CustomButtonTwo(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          AppString.englishTenses,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(AppString.minsAgo32),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(AppString.levelIntermediate),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18.r,
                          backgroundImage: AssetImage(AppImage.profileImgTwo),
                        ),
                        SizedBox(width: 10),
                        Text(AppString.denisaOzel),
                      ],
                    ),
                    SizedBox(height: 15),
                    CustomButtonTwo(),
                  ],
                ),
              ),
            ),
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

  // Progress Card Widget
  Widget _buildProgressCard(String count, String label, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
