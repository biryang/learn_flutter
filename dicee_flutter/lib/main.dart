import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
            centerTitle: true,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void getRandomDice(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
    print('LeftNum : $leftDiceNumber, RightNum : $rightDiceNumber');
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all((EdgeInsets.all(16)))),
                onPressed: () {
                  setState(() {
                    //call rebuild
                    getRandomDice();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all((EdgeInsets.all(16)))),
                onPressed: () {
                  setState(() {
                    //call rebuild
                    getRandomDice();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          )
        ],
      ),
    );
  }
}
