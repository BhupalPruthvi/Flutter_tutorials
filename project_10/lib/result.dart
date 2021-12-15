// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (totalScore == 300) {
      resultText = 'Potter Head';
    } else {
      resultText = 'You failed';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.greenAccent,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            color: Colors.pink[100],
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
