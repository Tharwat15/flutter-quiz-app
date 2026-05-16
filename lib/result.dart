import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function RestartQuiz;
  Result(this.score, this.RestartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          "you did it you score is " + score.toString(),
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: () => RestartQuiz(), child: Text("Restart Quiz"))
      ]),
    );
  }
}
