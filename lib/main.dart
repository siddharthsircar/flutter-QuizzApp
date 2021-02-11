import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Info'),
        ),
        body: Column(children: <Widget>[
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed:
                answerQuestion, // we are passing the pointer to the function and not the result of the function
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2 Chosen!!'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () {
              print('Answer 3 Chosen!!');
            },
          ),
        ]),
        backgroundColor: Colors.amber[50],
      ),
    );
  }
}
