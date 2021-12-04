import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result({this.resultScore, this.resetQuiz});

  String get resultPhrase {
    String ResultText;
    if (resultScore <= 7) {
      ResultText = "Hmmm.... so innocent!";
    } else if (resultScore <= 10) {
      ResultText = "Okay... You are not so bad!";
    } else if (resultScore <= 15) {
      ResultText = ".... You are little bit strange!";
    } else {
      ResultText = "Ewww!... Go away!";
    }
    return ResultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetQuiz,
              child: Text(
                'Restart now!',
              ))
        ],
      ),
    );
  }
}
