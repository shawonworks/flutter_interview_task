import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_interview_task/View/Widget/CustomBottomNavBar/custom_bottom_nav_bar.dart';
import 'package:flutter_interview_task/View/Widget/CustomRoleTabBar/custom_role_tab_bar.dart';
import 'package:flutter_interview_task/View/Widget/CustomTabBar/custom_tab_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white900,
      appBar: AppBar(
        backgroundColor: AppColor.white900,
        elevation: 0,
        title: Text(
          AppString.learnThroughWatchingReels,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.searchScreen);
              },
              child: Icon(Icons.search_outlined, size: 28.r),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.h.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //=-=-=-=-=-=-=-=Tab Bar=-=-=-=-==-=//
            SizedBox(
              height: 45,
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  labelColor: AppColor.blue900,
                  indicatorColor: AppColor.blue900,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: const [
                    Tab(text: "Trending"),
                    Tab(text: "New"),
                    Tab(text: "Following"),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.h),

            //=-=--=-=-=-=-=-Custom Tab Bar=-=-=-=-=-=-=-=-==//
            CustomTabBar(),

            SizedBox(height: 10.h),
            // Grid of Cards
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 0.75,
                ),
                itemCount: demoData.length,
                itemBuilder: (context, index) {
                  return _buildCourseCard(demoData[index]);
                },
              ),
            ),
          ],
        ),
      ),

      //=-=--=-=-==-=-=-=-Custom Bottom Navigation Bar=-=-=-=-=-=-=-=-=-=-=-//
      // bottomNavigationBar: CustomBoomNavBar(
      //   currentIndex: 0,
      //   onTap: (index) {
      //     print("Bottom Nav Tapped: $index");
      //   },
      // ),
    );
  }

  //=-=-=-=-==-=-=-=-=-=-Category Widget=-=--=-=-=-=-=-=-=-=-//
  Widget _buildChip(String title, {bool isSelected = false}) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColor.blue900.withOpacity(0.1)
            : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(30.r),
        border: isSelected
            ? Border.all(color: AppColor.blue900, width: 1.5)
            : null,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? AppColor.blue900 : Colors.grey.shade700,
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
        ),
      ),
    );
  }

  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=Course Widget=-=-=-=-=-=-=-=-=-=-==//
  Widget _buildCourseCard(Course item) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Stack(
          children: [
            Image.asset(
              item.image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 12,
              right: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12.r,
                        backgroundImage: AssetImage(item.teacherImage),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        item.teacherName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Course Model
class Course {
  final String title;
  final String teacherName;
  final String image;
  final String teacherImage;

  Course({
    required this.title,
    required this.teacherName,
    required this.image,
    required this.teacherImage,
  });
}

final List<Course> demoData = [
  Course(
    title: AppString.vocabulary,
    teacherName: AppString.jessicaRoy,
    image: AppImage.boxImgOne,
    teacherImage: AppImage.profileImgTwo,
  ),
  Course(
    title: AppString.vocabulary,
    teacherName: AppString.jessicaRoy,
    image: AppImage.boxImgTwo,
    teacherImage: AppImage.profileImgTwo,
  ),
  Course(
    title: AppString.vocabulary,
    teacherName: AppString.jessicaRoy,
    image: AppImage.boxImgThree,
    teacherImage: AppImage.profileImgTwo,
  ),
  Course(
    title: AppString.vocabulary,
    teacherName: AppString.jessicaRoy,
    image: AppImage.boxImgFour,
    teacherImage: AppImage.profileImgTwo,
  ),
  Course(
    title: AppString.vocabulary,
    teacherName: AppString.jessicaRoy,
    image: AppImage.boxImgOne,
    teacherImage: AppImage.profileImgTwo,
  ),
  Course(
    title: AppString.vocabulary,
    teacherName: AppString.jessicaRoy,
    image: AppImage.boxImgTwo,
    teacherImage: AppImage.profileImgTwo,
  ),
];
