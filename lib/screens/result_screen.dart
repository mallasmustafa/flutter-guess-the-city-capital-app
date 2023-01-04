import 'package:flutter/material.dart';
import 'package:flutter_application_1/contants.dart/app_strings.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';
import 'package:flutter_application_1/modal/reset_quiz_value.dart';

class ResultScreen extends StatelessWidget {
    static const routeName = '/result';
   const ResultScreen({this.score = 0, this.totalAttempt = 0});

  final int score;
  final int totalAttempt;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final totalAttempted =totalAttempt;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomCard(
              height: 300,
              headingWidget: Text(
                AppString.quizEnded,
                style: theme.textTheme.headline1,
              ),
              bodyWidget: Text(
                '${score}/${totalAttempted}',
                style: theme.textTheme.headline1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children :[
               CustomButton(
                title: AppString.restart,
               onPress: (() => Navigator.pop(
                context,
                ResetQuizValue(status: AppString.reset),)),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
