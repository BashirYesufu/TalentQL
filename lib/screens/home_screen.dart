import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/textstyles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const screenID = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        elevation: 0,
        actions: [
          Icon(Icons.menu),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text20(text: 'London'),
                Text20(text: 'United Kingdom'),
                Text('Sat, 6 Aug', style: AppTextStyles.kWhite14,),
                SizedBox(height: MediaQuery.of(context).size.height / 7,),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text20(text: 'Today'),
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
      ),
    );
  }
}

class HourlyForecastContainer extends StatelessWidget {
  const HourlyForecastContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('9AM', style: AppTextStyles.kWhite14,),
          Icon(Icons.cloud, color: AppColors.white,),
          Text('16°', style: AppTextStyles.kWhite14,)
        ],
      ),
    );
  }
}

class Text20 extends StatelessWidget {
  const Text20({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(text, style: AppTextStyles.kWhiteBold20,),
    );
  }
}