import 'package:flutter/material.dart';

import './textOutput.dart';
import './textControl.dart';

class App extends StatelessWidget {
  final String text;
  final Function changeText;

  App(this.text, this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextOutput(text),
            TextControl(changeText),
          ],
        ),
      ),
    );
  }
}
