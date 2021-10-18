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
          'My App',
          textAlign: TextAlign.left,
        ),
        centerTitle: false,
        elevation: 40.0,
        backgroundColor: Colors.lightBlue[400],
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assetsImages/spidey.jpg'),
        ),
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
