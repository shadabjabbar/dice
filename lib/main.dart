import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDice = 1;
  int _rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_leftDice.png'),
              onPressed: () {
                setState(() {
                  _leftDice = Random().nextInt(6) + 1;
                  print('Dice $_leftDice');
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_rightDice.png'),
              onPressed: () {
                setState(() {
                  _rightDice = Random().nextInt(6) + 1;
                  print('Dice $_rightDice');
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
