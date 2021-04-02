import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '무슨 색을 좋아하시나요?',
      'answers': [
        {'text': '검정', 'score': 5},
        {'text': '빨강', 'score': 4},
        {'text': '초록', 'score': 3},
        {'text': '흰색', 'score': 2},
      ]
    },
    {
      'questionText': '어떤 동물을 좋아하시나요?',
      'answers': [
        {'text': '토끼', 'score': 5},
        {'text': '뱀', 'score': 4},
        {'text': '코끼리', 'score': 3},
        {'text': '사자', 'score': 2},
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);

    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('아직 문제가 남았어요');
    } else {
      print('문제 종료');
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
            : Result(_totalScore),
      ),
    );
  }
}
