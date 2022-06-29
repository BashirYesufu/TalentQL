import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:talent_ql/constants/colors.dart';
import 'package:talent_ql/models/weather_argument.dart';
import 'package:talent_ql/screens/home_screen.dart';
import 'package:talent_ql/services/weather_service.dart';

import '../models/weather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  static const screenID = 'Loading';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async {
    WeatherService weatherService = WeatherService();
    Weather weather = await weatherService.getCurrentWeather();
    goHome(weather);
  }

  void goHome(Weather weather){
    Navigator.pushNamed(context, HomeScreen.screenID, arguments: WeatherArgument(weather: weather));
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.fourRotatingDots(
          color: AppColors.blue,
          size: 100.0,
        ),
      ),
    );
  }
}
