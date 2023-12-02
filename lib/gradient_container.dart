import 'package:flutter/material.dart';
import 'package:dice_roller_app/diceapp.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key, required this.color1, required this.color2}) : super(key: key);

  GradientContainer.purple({Key? key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo,
        super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2], // Corrected colors parameter
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceApp(), // Changed Diceapp() to DiceApp()
      ),
    );
  }
}
