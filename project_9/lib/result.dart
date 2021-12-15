// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quiz Complete!',
        style: TextStyle(
          fontSize: 30,
          backgroundColor: Colors.greenAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
