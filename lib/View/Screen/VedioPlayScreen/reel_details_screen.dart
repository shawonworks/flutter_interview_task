import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Core/AppRoute/app_route.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/Utils/AppImg/app_img.dart';
import 'package:flutter_interview_task/Utils/StaticString/static_string.dart';
import 'package:flutter_interview_task/View/Widget/CustomBottomNavBar/custom_bottom_nav_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReelDetailScreen extends StatefulWidget {
  const ReelDetailScreen({super.key});

  @override
  State<ReelDetailScreen> createState() => _ReelDetailScreenState();
}

class _ReelDetailScreenState extends State<ReelDetailScreen> {
  int currentIndex = 0;
  bool isFollowing = false;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          //=-=-=-==-=-Image/Video Background=-=-=-=-=-=-=--//
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.boxImgOne),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // =-=-=-=-=-=-=-=-Gradient Overlay=-=-=-=-=-=-=-=-//
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                //begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
          ),

          //=-=-=-=-=-=-=-=- AppBar with Search=-=-=-=-=-=-==-//
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //=-=-=-=-==-=Back Button=-=-=-=-=-=-=-=-=-=-=//
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.homeScreen);
                    },
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20.r,
                      ),
                    ),
                  ),

                  // =-=-=-=-=-=Search Icon=-=-=-=-=-=-//
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.searchScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: 24.r,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // =-=-=-=-=-=-=-=- Content Area=-=-=-=-=-=-=-=-=-=//
          Positioned(
            bottom: 20.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //=-=-=-=-=-=-=Teacher Profile + Follow Button=-=-=-=-=-=-=-//
                Row(
                  children: [
                    // Teacher Avatar
                    CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(AppImage.profileImgTwo),
                    ),

                    SizedBox(width: 12.w),

                    // Teacher Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.jessicaRoy,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 10),

                    // Follow Button
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isFollowing = !isFollowing;
                        });
                        print(
                          "Follow button ${isFollowing ? 'followed' : 'unfollowed'}!",
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          color: isFollowing
                              ? Colors.grey.shade600.withOpacity(0.2)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(25.r),
                          border: Border.all(
                            color: isFollowing
                                ? Colors.grey.shade400
                                : Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          isFollowing ? "Following" : AppString.follow,
                          style: TextStyle(
                            color: isFollowing
                                ? AppColor.black600
                                : AppColor.black600,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                // Main Title
                Text(
                  AppString.startLearningVocabularyToday,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5.h),

                // Description
                RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14.sp,
                      height: 1.4,
                    ),
                    children: [
                      TextSpan(text: AppString.soWhatIsTheNecessary),
                      TextSpan(
                        text: AppString.readMore,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Like Button
          Positioned(
            right: 20.w,
            left: 260.w,
            bottom: 85.h,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                });
                print("Heart button ${isLiked ? 'liked' : 'unliked'}!");
              },
              child: Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isLiked ? Colors.red : Colors.white,
                  size: 20.r,
                ),
              ),
            ),
          ),
        ],
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
}
