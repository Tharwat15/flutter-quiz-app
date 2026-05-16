import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalscore = 0;

  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    setState(() {
      questionIndex = questionIndex + 1;
      print("the score is " + totalscore.toString());
    });
  }

  void RestartQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
    print("index at " + questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "questionText": "what is my favorite Color?",
        "Answers": [
          {"text": 'Red ', "score": 0},
          {"text": 'Green ', "score": 0},
          {"text": 'Blue ', "score": 5}
        ]
      },
      {
        "questionText": "what is my favorite food ?",
        "Answers": [
          {"text": 'Burger', "score": 0},
          {"text": 'Pizza', "score": 5},
          {"text": 'koshary', "score": 0}
        ]
      },
      {
        "questionText": "what is my favorite Animal?",
        "Answers": [
          {"text": 'Wolf ', "score": 5},
          {"text": 'Snake ', "score": 0},
          {"text": 'Lion ', "score": 0},
          {"text": 'Cat ', "score": 0}
        ]
      },
      {
        "questionText": "what is your favorite Person?",
        "Answers": [
          {"text": 'Tharwat ', "score": 5},
          {"text": 'Mohamed Tharwat ', "score": 5},
          {"text": 'the guy who made this app ', "score": 5}
        ]
      },
    ];
    return MaterialApp(
      title: "Quiz-App",
      home: Scaffold(
        appBar: AppBar(title: Text("Qiuz App ")),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: _answerQuestion,
                questionIndex: questionIndex)
            : Result(totalscore, RestartQuiz),
      ),
    );
  }
}
