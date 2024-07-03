import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({super.key, required this.colors});
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  const GradientContainer.custom({super.key})
      : colors = const [Colors.yellow, Colors.purple];

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        // child: StyledText('Welcome to Flutter'),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-images/dice-1.png',
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
        ),
      ),
    );
  }
}
