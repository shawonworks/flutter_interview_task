import 'package:flutter/material.dart';
import 'package:flutter_interview_task/Utils/AppColors/app_colors.dart';
import 'package:flutter_interview_task/View/Screen/BookScreen/book_screen.dart';
import 'package:flutter_interview_task/View/Screen/HomeScreen/home_screen.dart';
import 'package:flutter_interview_task/View/Screen/ProfileScreen/profile_screeen.dart';
import 'package:flutter_interview_task/View/Screen/ThinkingScreen/ThinkingScreenOne/thinking_screen.dart';
import 'package:flutter_interview_task/View/Screen/VedioPlayScreen/reel_details_screen.dart';
import 'package:flutter_interview_task/View/Widget/CustomBottomNavBar/custom_bottom_nav_bar.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  int currentIndex = 0;

  final List<Widget> allScreen = [
    HomeScreen(),
    ReelDetailScreen(),
    ThinkingScreen(),
    BookScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColor.white900,
      body: allScreen[currentIndex],
      bottomNavigationBar: CustomBoomNavBar(currentIndex: currentIndex, onTap: (index){
        setState(() {
          currentIndex = index;
        });
      }),
    );
  }
}
