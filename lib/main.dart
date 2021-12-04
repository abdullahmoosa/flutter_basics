import 'package:flutter/material.dart';
import './result.dart';

import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'Text': 'Black', 'score': 10},
        {'Text': 'Red', 'score': 8},
        {'Text': 'Green', 'score': 3},
        {'Text': 'White', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'Text': 'Rabbit', 'score': 1},
        {'Text': 'Snake', 'score': 9},
        {'Text': 'Elephant', 'score': 5},
        {'Text': 'Lion', 'score': 7}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'Text': 'Max', 'score': 1},
        {'Text': 'Max', 'score': 1},
        {'Text': 'Max', 'score': 1},
        {'Text': 'Max', 'score': 1}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(
                  resultScore: _totalScore,
                  resetQuiz: _resetQuiz,
                )),
    );
  }
}
