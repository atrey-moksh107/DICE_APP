import 'package:flutter/material.dart';
import 'package:dice_roller_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: Color.fromARGB(255, 33, 5, 109),
          color2: Color.fromARGB(255, 89, 78, 213),
        ),

      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
