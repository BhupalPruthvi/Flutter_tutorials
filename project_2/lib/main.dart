import 'package:flutter/material.dart';

/* one line functions */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion1() {
    print('Answer chosen: Cheetah');
    print('WRONG');
  }

  void answerQuestion2() {
    print('Answer chosen: Tiger');
    print('Correct');
  }

  void answerQuestion3() {
    print('Answer chosen: Lion');
    print('WRONG');
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
        body: Column(
          children: [
            Text('What is your fav animal?'),
            RaisedButton(
              child: Text('Cheetah'),
              onPressed: answerQuestion1,
            ),
            RaisedButton(
              child: Text('Tigerr'),
              onPressed: answerQuestion2,
            ),
            RaisedButton(
              child: Text('Lion'),
              onPressed: answerQuestion3,
            ),
          ],
        ),
      ),
    );
  }
}
