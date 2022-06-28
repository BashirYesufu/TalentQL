import 'package:flutter/material.dart';
import 'package:talent_ql/components/app_scaffold.dart';
import 'package:talent_ql/constants/textstyles.dart';

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
              SizedBox(height: 30),
              SevenDayRow()
            ],
          ),
        )
      ],
    );
  }
}
