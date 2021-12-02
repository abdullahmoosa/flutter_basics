import 'dart:io';

import 'package:flutter/material.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    // print('Answered!');
    setState(() {
      _questionIndex = _questionIndex +
          1; // It is better to use this syntax rather than questionIndex++
    });
    // print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
                color: Colors.blue,
                textColor: Colors.white,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chosen!');
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          ) // body
          ),
    );
  }
}
