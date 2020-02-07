import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function selectHandler;

  TextControl(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text('Click me!'),
        padding: EdgeInsets.all(8.0),
        color: Colors.black,
        textColor: Colors.white,
      ),
    );
  }
}
