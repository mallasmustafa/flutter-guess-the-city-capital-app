import 'package:flutter/material.dart';
import 'package:flutter_application_1/contants.dart/app_strings.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';

class AboutScreen extends StatelessWidget {
   static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.aboutScreenTitle,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCard(
            bodyWidget: Text(AppString.aboutScreenText,
             style: TextStyle(fontSize: 24),
             ),
            height: 300,
          ),
          CustomButton(title: AppString.goBack, onPress: () => Navigator.pop(context) ,
          ),
            
        ],
      ),
    ),
    );
  }
}
