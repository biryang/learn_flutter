import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);

  String get resultText {
    String _resultText = '';
    if(score <= 3) {
      _resultText = '미묘한점수';
    }else if(score <= 8){
      _resultText = '중간점수';
    }else{
      _resultText = '높은점수';
    }
    return _resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultText),
    );
  }
}
