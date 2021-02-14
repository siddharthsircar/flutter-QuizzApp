import 'package:flutter/material.dart';

import './main.dart';

class Answer extends StatelessWidget {
  final Function onPressActivity;
  final String answerText;

  Answer(this.onPressActivity, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: onPressActivity,
      ),
    );
  }
}
