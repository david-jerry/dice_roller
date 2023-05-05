import 'package:Dice/utilities/gradient_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, // set this property to false
    home: Scaffold(
      body: GradientText(
        textVar: "Drum Rolls",
        colorFirst: Color.fromARGB(255, 239, 253, 222),
        colorSecond: Color.fromARGB(255, 233, 247, 254),
        topLeftAlignment: Alignment.topLeft,
        bottomRightAlignment: Alignment.bottomRight,
      ),
    ),
  ));
}
