import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // variable
  var activeDiceImage = "assets/images/dice-6.png";
  var activeDiceImage2 = "assets/images/dice-6.png";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        Image.asset(
          activeDiceImage2,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(4),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  void rollDice() {
    // Create a new Random object
    final Random random = Random();

    // Generate a random number between 1 and 6
    int randomNumber = random.nextInt(6) + 1;
    int randomNumber2 = random.nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/images/dice-$randomNumber.png";
      activeDiceImage2 = "assets/images/dice-$randomNumber2.png";
      // if (kDebugMode) {
      //   print("Changing Image");
      // }
    });
  }
}
