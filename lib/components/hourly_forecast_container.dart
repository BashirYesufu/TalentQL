import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/textstyles.dart';

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

