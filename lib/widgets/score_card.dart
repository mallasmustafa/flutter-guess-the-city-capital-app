import 'package:flutter_application_1/contants.dart/app_strings.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  ScoreCard({this.score = 0, this.totalAttempted = 0});

  int score;
  int totalAttempted;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return CustomCard(
      backgroundColor: theme.scaffoldBackgroundColor,
      elevation: 5,
      shadowColor: Colors.black,
      headingWidget: Text(
        AppString.score,
        style: theme.textTheme.headline1,
      ),
      bodyWidget: Text(
        '${score}/${totalAttempted}',
        style: theme.textTheme.headline1,
      ),
    );
  }
}
