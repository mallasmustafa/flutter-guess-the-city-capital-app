import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/about_screen.dart';
import 'package:flutter_application_1/contants.dart/app_strings.dart';
import 'package:flutter_application_1/data/countries.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';
import 'package:flutter_application_1/modal/quiz.dart';
import 'package:flutter_application_1/modal/reset_quiz_value.dart';
import 'package:flutter_application_1/screens/result_screen.dart';
import 'package:flutter_application_1/widgets/score_card.dart';
import 'package:flutter_application_1/utils/utils.dart';

class MyCountryApp extends StatefulWidget {
  static const routeName = '/';
  @override
  State<MyCountryApp> createState() => _MyCountryAppState();
}

class _MyCountryAppState extends State<MyCountryApp> {
  Quiz quizScoreCard = Quiz();
  bool showAnswer = false;
  List<String> _list = [
    'List 1',
    'List 2',
    'List 3',
    'List 4',
    'List 5',
    'List 6',
    'List 7',
    'List 8',
    'List 9',
    'List 10',
    'List 11',
    'List 12'
  ];
  void handleShowAnswer() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.red.shade100,
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppString.appTitle),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text(AppString.reset),
          onPressed: resetQuiz,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, AboutScreen.routeName),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          AppString.aboutUs,
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ScoreCard(
                totalAttempted: quizScoreCard.totalAttempted,
                score: quizScoreCard.score),
            CustomCard(
              height: 100,
              shadowColor: Colors.grey,
              headingWidget: Text(
                !showAnswer ? AppString.capital : AppString.country,
                style: theme.textTheme.headline1,
              ),
              bodyWidget: Text(
                !showAnswer
                    ? countries[quizScoreCard.totalAttempted][AppString.city.toLowerCase()]!
                    : countries[quizScoreCard.totalAttempted][AppString.country.toLowerCase()] ??"",
                style: theme.textTheme.subtitle1,
              ),
              onPress: handleShowAnswer,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  onPress: markAnswerCorrect,
                  title: AppString.correct,
                  backgroundColor: Colors.green,
                ),
                CustomButton(
                  title: AppString.wrong,
                  onPress: markAnswerWrong,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            CustomButton(
                title: AppString.showResult,
                onPress: (() {
                  Navigator.pushNamed(
                    context,
                    ResultScreen.routeName,
                    arguments: quizScoreCard,
                  ).then((value) {
                    final statusvalue = value as ResetQuizValue;
                    if (statusvalue.status == AppString.reset) {
                      resetQuiz();
                    }
                  });
                })),
          ],
        ),
      ),
    );
  }

  markAnswerWrong() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.markAnswerWrong();
      } else {
        shoeEOLALter(context);
      }
    });
  }

  void markAnswerCorrect() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.markAnswerCorrect();
      } else {
        shoeEOLALter(context);
      }
    });
  }

  resetQuiz() {
    setState(() {
      quizScoreCard.resetQuiz();
    });
  }
}
