// ignore_for_file: avoid_print, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './questions.dart';
import './answer.dart';

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
  var questions = [
    {
      'QuestionText': 'Harry\'s first Broomstick',
      'AnswerText': ['Nimbus 2000', 'Firebolt', 'Clean Sweeper'],
    },
    {
      'QuestionText': 'Harry\'s Dragon in Goblet of Fire',
      'AnswerText': [
        'Chinese Fireball',
        'Hungarian Horntail',
        'Common Welsh Green',
        'Swedish Short-Snout',
      ],
    },
    {
      'QuestionText': 'Disarming Spell',
      'AnswerText': ['Expilliarmus', 'Aloha Mora', 'Ridikkulus'],
    },
  ];

  void answerQuest() {
    if (questIndex < questions.length) {
      setState(() {
        questIndex = questIndex + 1;
      });
    } else {}
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
            ? Column(
                children: [
                  Question(
                    questions[questIndex]['QuestionText'] as String,
                  ),
                  //spread operator
                  ...(questions[questIndex]['AnswerText'] as List<String>)
                      .map((value) {
                    return Answer(value, answerQuest);
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                  'Quiz Complete!',
                  style: TextStyle(
                    fontSize: 30,
                    backgroundColor: Colors.greenAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
