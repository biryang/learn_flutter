import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((value) => Answer(
                  onPressed: answerQuestion,
                  answerText: value,
                ))
            .toList()
      ],
    );
  }
}
