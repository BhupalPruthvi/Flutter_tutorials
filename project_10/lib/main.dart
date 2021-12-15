// ignore_for_file: avoid_print, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/* one line functions */
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questIndex = 0;
  var totalScore = 0;
  var questions = [
    {
      'QuestionText': 'Harry\'s first Broomstick',
      'AnswerText': [
        {'Text': 'Nimbus 2000', 'Score': 100},
        {'Text': 'Firebolt', 'Score': 0},
        {'Text': 'Clean Sweeper', 'Score': 0}
      ],
    },
    {
      'QuestionText': 'Harry\'s Dragon in Goblet of Fire',
      'AnswerText': [
        {'Text': 'Chinese Fireball', 'Score': 0},
        {'Text': 'Hungarian Horntail', 'Score': 100},
        {'Text': 'Common Welsh Green', 'Score': 0},
        {'Text': 'Swedish Short-Snout', 'Score': 0},
      ],
    },
    {
      'QuestionText': 'Disarming Spell',
      'AnswerText': [
        {'Text': 'Expilliarmus', 'Score': 100},
        {'Text': 'Aloha Mora', 'Score': 0},
        {'Text': 'Ridikkulus', 'Score': 0}
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      questIndex = 0;
      totalScore = 0;
    });
  }

  // ignore: non_constant_identifier_names
  void answerQuest(int Score) {
    totalScore = totalScore + Score;
    setState(() {
      questIndex = questIndex + 1;
    });
  }

  @override
  /* decorator, overriding with our 
  own application */
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome'),
          ),
          body: questIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuest: answerQuest,
                  questIndex: questIndex)
              : Result(totalScore, resetQuiz)),
    );
  }
}
