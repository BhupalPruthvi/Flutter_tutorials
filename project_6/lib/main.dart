// ignore_for_file: avoid_print, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
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
  @override
  void answerQuest() {
    setState(() {
      questIndex = questIndex + 1;
    });
  }

  @override
  /* decorator, overriding with our 
  own application */
  Widget build(BuildContext context) {
    var questions = [
      'Favorite animal?',
      'Favorite color',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(questIndex)),
            Answer('Cheetah', answerQuest),
            Answer('Tiger', answerQuest),
            Answer('Lion', answerQuest),
          ],
        ),
      ),
    );
  }
}
