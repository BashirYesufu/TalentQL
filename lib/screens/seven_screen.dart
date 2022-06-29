import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:talent_ql/components/app_scaffold.dart';
import 'package:talent_ql/constants/colors.dart';
import 'package:talent_ql/constants/textstyles.dart';
import 'package:talent_ql/models/day_weather.dart';
import 'package:talent_ql/services/weather_service.dart';
import '../components/seven_day_row.dart';

class SevenDayScreen extends StatelessWidget {
  const SevenDayScreen({Key? key}) : super(key: key);
  static const screenID = 'SevenDay';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Next 7 Days', style: AppTextStyles.kBlackBold30,),
                  Spacer(),
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  FutureBuilder<List<DayWeather>>(
                    future: WeatherService().getFiveDayForecast(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: snapshot.data?.length,
                              itemBuilder: (context, index) {
                                return SevenDayRow(weather: snapshot.data![index],);
                              },
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            'Error getting weather',
                            style: AppTextStyles.kBlackBold30,
                            textAlign: TextAlign.center,
                          ),
                        );
                      }
                      return LoadingAnimationWidget.fourRotatingDots(
                          color: AppColors.blue,
                        size: 100,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
