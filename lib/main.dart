import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s yout favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 4},
        {'text': 'Lion', 'score': 6},
        {'text': 'Snake', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite car?',
      'answers': [
        {'text': 'Audi', 'score': 8},
        {'text': 'Jaguar', 'score': 6},
        {'text': 'BMW', 'score': 4},
        {'text': 'Mercedes', 'score': 2}
      ]
    },
  ];

  var _questionIndex = 0;

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!!');
    } else {
      print('No more questions!!');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
        backgroundColor: Colors.white,
      ),
    );
  }
}
