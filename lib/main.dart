import 'package:flutter/material.dart';
import 'package:talent_ql/routes.dart';

void main() =>runApp(const TalentQL());

class TalentQL extends StatelessWidget {
  const TalentQL({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHandler.initialRoute,
      routes: RouteHandler.routes,
    );
  }
}


