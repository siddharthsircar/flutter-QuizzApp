import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awsome and Innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You are Pretty Likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are.....Strange?!';
    } else {
      resultText = 'You are so Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text(
              'RESTART QUIZ!',
              style: TextStyle(fontSize: 15),
            ),
            textColor: Colors.blue,
            onPressed: resetQuiz)
      ],
    ));
  }
}
