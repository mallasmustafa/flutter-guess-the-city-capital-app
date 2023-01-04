
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/about_screen.dart';
import 'package:flutter_application_1/screens/my_country_screen.dart';
import 'package:flutter_application_1/modal/quiz.dart';
import 'package:flutter_application_1/screens/result_screen.dart';

class CustomRoutes {
  static genrateRoutes(settings) {
    switch (settings.name) {
      case ResultScreen.routeName:
        final arg = settings.arguments as Quiz;
        return MaterialPageRoute(
          builder: (context) => ResultScreen(
            score: arg.score,
            totalAttempt: arg.totalAttempted,
          ),
        );
      case AboutScreen.routeName:
        return MaterialPageRoute(builder: (context) => AboutScreen());
      default:
        return MaterialPageRoute(builder: (context) => MyCountryApp());
    }
  }
}
