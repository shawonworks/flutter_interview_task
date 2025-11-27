import 'package:flutter_interview_task/View/Screen/AllScreen/all_screen.dart';
import 'package:flutter_interview_task/View/Screen/CreatAccount/create_account.dart';
import 'package:flutter_interview_task/View/Screen/HomeScreen/home_screen.dart';
import 'package:flutter_interview_task/View/Screen/SearchScreen/search_screen.dart';
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

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => LogInPage()),
    GetPage(name: createAccount, page: () => CreateAccount()),
    GetPage(name: allScreen, page: () => AllScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: searchScreen, page: () => SearchScreen()),
    GetPage(name: reelDetailsScreen, page: () => ReelDetailScreen()),
  ];
}
