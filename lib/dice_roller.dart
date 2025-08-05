import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 2;
  void rollDice() {
    setState((){
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  /// Builds a Container widget with a gradient background
  /// that transitions from red, to yellow, to green.
  ///
  /// The gradient begins at the top right of the container
  /// and ends at the bottom left.
  ///
  /// The Container also has a child Text widget that is
  /// centered in the Container and displays the text
  /// "Hello World from Flutter yeah yeahh" in black
  /// 40-point font with a font family of "Times New Roman".
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(height: 30),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black87,
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          child: const StyledText('Roll Dice', 30),
        ),
      ],
    );
  }
}
