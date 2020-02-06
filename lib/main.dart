// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './textOutput.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String text = 'You can\'t change me!';

  void changeText() {
    setState(() {
      text = 'You did it =(';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Assignment 1'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextOutput(text),
              RaisedButton(
                onPressed: changeText,
                child: Text('Click me!'),
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
