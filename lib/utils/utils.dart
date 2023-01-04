import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/contants.dart/app_strings.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
     void shoeEOLALter(BuildContext context) {
    Alert(
            context: context,
            title: AppString.alertTitle,
            desc: AppString.endOfQuiz,
     ) .show();
  }