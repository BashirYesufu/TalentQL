import 'package:flutter/material.dart';
import 'package:talent_ql/constants/colors.dart';
import 'package:weather_icons/weather_icons.dart';
class Helper {

  static Icon getWeatherIcon(int condition) {
    if (condition < 300) {
      return Icon(WeatherIcons.thunderstorm);
    } else if (condition < 400) {
      return Icon(WeatherIcons.day_rain, color: AppColors.grey,);
    } else if (condition < 600) {
      return Icon(WeatherIcons.storm_showers, color: AppColors.grey,);
    } else if (condition < 700) {
      return Icon(WeatherIcons.snow, color: AppColors.white,);
    } else if (condition < 800) {
      return Icon(WeatherIcons.humidity);
    } else if (condition == 800) {
      return Icon(WeatherIcons.sunrise, color: AppColors.gold,);
    } else if (condition <= 804) {
      return Icon(WeatherIcons.cloudy);
    } else {
      return Icon(WeatherIcons.cloudy_windy);
    }
  }

}
