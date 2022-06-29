import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class AppScaffold extends StatelessWidget {
  final List<Widget> children;
  final Color appBarColor;
  final Color backgroundColor;
  final bool hasBackButton;
  final List<Widget> trailing;

  const AppScaffold({
    required this.children,
    this.appBarColor = AppColors.white,
    this.backgroundColor = AppColors.white,
    this.hasBackButton = true,
    this.trailing = const [],
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child:Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            leading: hasBackButton
                ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: AppColors.grey,
              ),
            )
                : SizedBox(),
            actions: trailing,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ),
       ),
    );
  }
}
