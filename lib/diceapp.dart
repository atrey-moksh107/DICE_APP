import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() {
    return _DiceAppState();
  }
}

class _DiceAppState extends State<DiceApp> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice$currentDiceRoll.png",
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: Text('Roll Dice'),
          style: TextButton.styleFrom(),
        )
      ],
    );
  }
}
