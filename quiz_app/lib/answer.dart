import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String answerText;

  Answer({this.onPressed, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
        ),
        child: Text(answerText),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
