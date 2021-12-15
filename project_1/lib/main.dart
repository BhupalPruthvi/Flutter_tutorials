import 'package:flutter/material.dart';

/* one line functions */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  /* decorator, overriding with our 
  own application */
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text("Hello World!!"),
    );
  }
}
