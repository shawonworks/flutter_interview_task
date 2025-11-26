import 'package:get/get.dart';

import '../../View/Screen/LogInPage/log_in_page.dart';

class AppRoute {
  static const String loginScreen = "/loginScreen";

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => LogInPage()),
  ];
}
