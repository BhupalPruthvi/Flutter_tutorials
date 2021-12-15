// ignore_for_file: avoid_print, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

/* one line functions */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questIndex = 0;
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
            Text(questions.elementAt(questIndex)),
            RaisedButton(
              child: Text('Cheetah'),
              onPressed: () {
                print('Answer chosen: Cheetah');
                print('WRONG');
              },
              hoverColor: Colors.amber,
            ),
            RaisedButton(
              child: Text('Tiger'),
              onPressed: () {
                print('Answer chosen: Tiger');
                print('Correct');
              },
            ),
            RaisedButton(
              child: Text('Lion'),
              onPressed: () {
                print('Answer chosen: Lion');
                print('WRONG');
              },
            ),
          ],
        ),
      ),
    );
  }
}
