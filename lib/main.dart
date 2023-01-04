
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_country_screen.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/utils/theme.dart';
void main() {
  runApp(
    MyApp(),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) =>  CustomRoutes.genrateRoutes(settings),
      //home:MyCountryApp(),
      initialRoute: MyCountryApp.routeName,
      theme: AppTheme.appTheme,
    );
  }
}
