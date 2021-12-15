// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String questionName;
  final VoidCallback ansHandler;

  Answer(
    this.questionName,
    this.ansHandler,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinite,
      margin: EdgeInsets.all(30),
      child: RaisedButton(
        child: Text(questionName),
        color: Colors.blue,
        hoverColor: Colors.amber,
        onPressed: ansHandler,
      ),
    );
  }
}
