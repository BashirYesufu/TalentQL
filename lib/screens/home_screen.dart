import 'package:flutter/material.dart';
import 'package:talent_ql/screens/seven_screen.dart';
import '../components/app_scaffold.dart';
import '../components/app_text.dart';
import '../components/hourly_forecast_container.dart';
import '../constants/colors.dart';
import '../constants/textstyles.dart';
import 'package:intl/intl.dart';
import '../models/weather.dart';
import '../utilities/helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.weather,
    Key? key}) : super(key: key);
  final Weather weather;
  static const screenID = 'Home';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColors.blue,
      appBarColor: AppColors.blue,
      hasBackButton: false,
      trailing: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, SevenDayScreen.screenID);
            },
              child: Icon(Icons.menu)),
        ),
      ],
      children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: weather.cityName),
                AppText(text: weather.country),
                Text(DateFormat('EEEE, d MMM, yyyy').format(DateTime.now()), style: AppTextStyles.kWhite14,),
                SizedBox(height: MediaQuery.of(context).size.height / 7,),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(text: 'Today'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Helper.getWeatherIcon(weather.weatherId,),
                            SizedBox(width: 10,),
                            Text('${weather.currentWeather.ceil()}°', style: AppTextStyles.kWhiteBold50,)
                          ],
                        ),
                      ),
                      Text(weather.weatherDescription, style: AppTextStyles.kWhite14,)
                    ],
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 20),
            child: Row(
              children: [
                AppText(text: 'Today', style: AppTextStyles.kGold14,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Tomorrow', style: AppTextStyles.kGold14,),
                ),
                InkWell(
                  onTap: ()=>Navigator.pushNamed(context, SevenDayScreen.screenID),
                  child: Row(
                    children: [
                      Text('Next 7 Days', style: AppTextStyles.kGold14,),
                      Icon(Icons.arrow_forward_sharp, color: AppColors.grey,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 30),
            decoration: BoxDecoration(
              color: AppColors.lightBlue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
            ),
            margin: EdgeInsets.only(left: 30),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                  HourlyForecastContainer(),
                ],
              ),
            ),
          )
        ],
    );
  }
}
