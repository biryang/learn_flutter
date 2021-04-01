import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      '무슨 색을 좋아하시나요?',
      "어떤 동물을 좋아하시나요?",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              ElevatedButton(child: Text('1번'), onPressed: answerQuestion),
              ElevatedButton(child: Text('2번'), onPressed: answerQuestion),
              ElevatedButton(child: Text('3번'), onPressed: answerQuestion),
            ],
          )),
    );
  }
}
