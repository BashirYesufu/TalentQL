import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:talent_ql/models/day_weather.dart';
import 'package:talent_ql/utilities/helper.dart';

class SevenDayRow extends StatelessWidget {
  const SevenDayRow({
    required this.weather,
    Key? key,
  }) : super(key: key);

  final DayWeather weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(DateFormat('EEEE').format(DateTime.parse(weather.date))),
          Row(
            children: [
              Helper.getWeatherIcon(weather.weatherID),
              SizedBox(width: 30,),
              Text('${weather.currentWeather.ceil()}°')
            ],
          )
        ],
      ),
    );
  }
}
