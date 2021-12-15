// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  final VoidCallback ansHandler;

  Answer(
    this.answerText,
    this.ansHandler,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(30),
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue[100],
        hoverColor: Colors.amber,
        onPressed: ansHandler,
      ),
    );
  }
}
