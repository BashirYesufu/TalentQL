import 'package:flutter/material.dart';
import '../constants/textstyles.dart';

class AppText extends StatelessWidget {
  const AppText({
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