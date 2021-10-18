import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Add Root widget - one property

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

//Creating own widgets
class Home extends StatelessWidget {
  //need to override the build defined here
  //from the one in StatelessWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello World!',
          textAlign: TextAlign.left,
        ),
        centerTitle: false,
        elevation: 40.0,
        backgroundColor: Colors.lightBlue[400],
      ),
      body: const Center(
        child: Text(
          'Hi Watermelon',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 40,
            fontWeight: FontWeight.w400,
          ),
        ),
        /*Icon(
          Icons.airport_shuttle,
          size: 50,
        ),*/
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: const Text(
          'Press Here',
          textScaleFactor: 1,
          textAlign: TextAlign.center,
        ),
        onPressed: null,
        backgroundColor: Colors.lightBlue[400],
      ),
    );
  }
}
