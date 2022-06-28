import 'package:flutter/material.dart';
import '../constants/textstyles.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.text,
    this.style = AppTextStyles.kWhiteBold20,
  }) : super(key: key);
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(text, style: style),
    );
  }
}