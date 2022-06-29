import 'package:flutter/material.dart';
import 'package:talent_ql/models/weather_argument.dart';
import 'package:talent_ql/screens/home_screen.dart';
import 'package:talent_ql/screens/loading_screen.dart';
import 'package:talent_ql/screens/seven_screen.dart';

class RouteHandler {
  static String initialRoute = LoadingScreen.screenID;

  static Map<String, Widget Function(BuildContext)> routes = {
    SevenDayScreen.screenID: (context) => SevenDayScreen(),
    LoadingScreen.screenID: (context) => LoadingScreen(),
  };

  static Route<dynamic>? generateRoute(RouteSettings route) {
    switch (route.name) {
      case HomeScreen.screenID:
        final args = route.arguments as WeatherArgument;
        return MaterialPageRoute(builder: (context) {
          return HomeScreen(weather: args.weather);
        });
      default:
        return null;
    }
  }
}
