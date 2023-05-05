import 'package:Dice/utilities/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  // constructor method for the custom widget class
  const GradientText({
    required this.textVar,
    required this.colorFirst,
    required this.colorSecond,
    required this.topLeftAlignment,
    required this.bottomRightAlignment,
    super.key,
  });

  final String textVar;
  final Color colorFirst;
  final Color colorSecond;
  final Alignment topLeftAlignment;
  final Alignment bottomRightAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorFirst,
            colorSecond,
          ],
          begin: topLeftAlignment,
          end: bottomRightAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
