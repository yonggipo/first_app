import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerStatus();
  }
}

class _DiceRollerStatus extends State<DiceRoller> {
  var currentDiceImage = 'assets/images/dice-images/dice-1.png';

  void rollDice() {
    setState(() {
      currentDiceImage = 'assets/images/dice-images/dice-2.png';
      print('Changing images...');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentDiceImage,
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
