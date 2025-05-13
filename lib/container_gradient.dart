// import 'package:first_app/styled_text.dart';
// import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class ContainerGradient extends StatelessWidget {
  final Color startColor;
  final Color endColor;
  final Alignment startAlignment;
  final Alignment endAlignment;

  ContainerGradient(this.startColor, this.endColor, this.startAlignment, this.endAlignment, {super.key});

  ContainerGradient.defaultColor({super.key})
    : startColor = const Color.fromARGB(255, 33, 219, 243),
      endColor = const Color.fromARGB(255, 234, 250, 5),
      startAlignment = Alignment.topLeft,
      endAlignment = Alignment.bottomCenter;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: [const Color.fromARGB(255, 33, 219, 243), const Color.fromARGB(255, 234, 250, 5)],
          colors: [startColor, endColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
