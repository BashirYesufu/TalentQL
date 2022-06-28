import 'package:flutter/material.dart';
import 'package:talent_ql/screens/seven_screen.dart';
import '../components/app_scaffold.dart';
import '../components/app_text.dart';
import '../components/hourly_forecast_container.dart';
import '../constants/colors.dart';
import '../constants/textstyles.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const screenID = 'Home';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColors.blue,
      appBarColor: AppColors.blue,
      hasBackButton: false,
      children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: 'London'),
                AppText(text: 'United Kingdom'),
                Text(DateFormat('EEEE, d MMM, yyyy').format(DateTime.now()), style: AppTextStyles.kWhite14,),
                SizedBox(height: MediaQuery.of(context).size.height / 7,),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(text: 'Today'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_sunny_outlined, color: AppColors.gold, size: 70,),
                          Text('22°', style: AppTextStyles.kWhiteBold30,)
                        ],
                      ),
                      Text('Sunny')
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
                Text('Today'),
                Text('Tomorrow'),
                InkWell(
                  onTap: ()=>Navigator.pushNamed(context, SevenDayScreen.screenID),
                  child: Row(
                    children: [
                      Text('Next 7 Days'),
                      Icon(Icons.arrow_forward_sharp)
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
