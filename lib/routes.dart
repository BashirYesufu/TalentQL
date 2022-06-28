import 'package:flutter/cupertino.dart';
import 'package:talent_ql/screens/home_screen.dart';
import 'package:talent_ql/screens/seven_screen.dart';

class RouteHandler {
  static String initialRoute = HomeScreen.screenID;

  static Map<String, Widget Function(BuildContext)> routes = {
    HomeScreen.screenID: (context) => HomeScreen(),
    SevenDayScreen.screenID: (context) => SevenDayScreen(),
  };

}
