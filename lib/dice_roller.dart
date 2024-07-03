import 'package:flutter/material.dart';
import 'dart:math';

import 'package:first_app/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerStatus();
  }
}

class _DiceRollerStatus extends State<DiceRoller> {
  var currentDiceNum = 2;

  void rollDice() {
    setState(() {
      currentDiceNum = randomizer.nextInt(6) + 1;
    });

    print('Changing images...');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentDiceNum.png',
          width: 200,
        ),
        // padding 대안
        const SizedBox(
          height: 20,
        ),
        TextButton(
            // onPressed: () {}, 익명 함수
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const StyledText('Roll Dice'))
      ],
    );
  }
}
