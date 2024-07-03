import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({super.key, required this.colors});
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  const GradientContainer.custom({super.key})
      : colors = const [Colors.yellow, Colors.purple];

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
      child: const Center(
        // child: StyledText('Welcome to Flutter'),
        child: DiceRoller(),
      ),
    );
  }
}
