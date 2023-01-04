
import 'package:flutter_application_1/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
   ScoreCard({this.score = 0, this.totalAttempted = 0});

  int score;
  int totalAttempted;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: Colors.lightBlue.shade100,
      elevation: 5,
      shadowColor: Colors.grey,
      headingWidget: Text(
        'Score',
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
      ),
      bodyWidget: Text(
        '${score}/${totalAttempted}',
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
      ),
    );
  }
}

