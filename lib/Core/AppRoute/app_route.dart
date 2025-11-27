import 'package:flutter_interview_task/View/Screen/AllScreen/all_screen.dart';
import 'package:flutter_interview_task/View/Screen/BookScreen/book_screen.dart';
import 'package:flutter_interview_task/View/Screen/CreatAccount/create_account.dart';
import 'package:flutter_interview_task/View/Screen/HomeScreen/home_screen.dart';
import 'package:flutter_interview_task/View/Screen/ProfileScreen/profile_screeen.dart';
import 'package:flutter_interview_task/View/Screen/SearchScreen/search_screen.dart';
import 'package:flutter_interview_task/View/Screen/ThinkingScreen/ThinkingScreenTwo/thinking_screen_two.dart';
import 'package:flutter_interview_task/View/Screen/ThinkingScreen/ThinkingScreenOne/thinking_screen.dart';
import 'package:flutter_interview_task/View/Screen/VedioPlayScreen/reel_details_screen.dart';
import 'package:get/get.dart';

import '../../View/Screen/LogInPage/log_in_page.dart';

class AppRoute {
  static const String loginScreen = "/loginScreen";
  static const String createAccount = "/createAccount";
  static const String allScreen = "/allScreen";
  static const String homeScreen = "/homeScreen";
  static const String searchScreen = "/searchScreen";
  static const String reelDetailsScreen = "/reelDetailsScreen";
  static const String thinkingScreen = "/thinkingScreen";
  static const String thinkingScreenTwo = "/thinkingScreenTwo";
  static const String bookScreen = "/bookScreen";
  static const String profileScreen = "/profileScreen";

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => LogInPage()),
    GetPage(name: createAccount, page: () => CreateAccount()),
    GetPage(name: allScreen, page: () => AllScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: searchScreen, page: () => SearchScreen()),
    GetPage(name: reelDetailsScreen, page: () => ReelDetailScreen()),
    GetPage(name: thinkingScreen, page: () => ThinkingScreen()),
    GetPage(name: thinkingScreenTwo, page: () => ThinkingScreenTwo()),
    GetPage(name: bookScreen, page: () => BookScreen()),
    GetPage(name: profileScreen, page: () => ProfileScreen()),
  ];
}
