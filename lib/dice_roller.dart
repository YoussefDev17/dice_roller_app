import 'package:flutter/material.dart';
import 'dart:math';

final randomNumber = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String imagePath = 'assets/images/dice-1.png';
  bool _isClicked = false;

  //List of image paths
  // final ListOfIamgePaths = [
  //   'assets/images/dice-1.png',
  //   'assets/images/dice-2.png',
  //   'assets/images/dice-3.png',
  //   'assets/images/dice-4.png',
  //   'assets/images/dice-5.png',
  //   'assets/images/dice-6.png',
  // ];

  // int ChoseArandomNumber(int min, int max) {
  //   return min + Random().nextInt(max - min + 1);
  // }

  // String ChoseImagePath(int randomNumber) {
  //   //here will be the logic to chose the image path
  //   imagePath = ListOfIamgePaths[randomNumber - 1];
  //   return imagePath;
  // }

  int CurrentDiceRoll = 1;
  void OnPressRollDice() {
    //here will bee the logic to roll the dice
    setState(() {
      _isClicked = !_isClicked; // toggle state

      CurrentDiceRoll = randomNumber.nextInt(6) + 1; // Generate a random number between 1 and 6

      // int randomNumber = ChoseArandomNumber(1, 6);
      // imagePath = ChoseImagePath(randomNumber);
    });

    // Delay to reset color after 200 ms
    Future.delayed(Duration(milliseconds: 200), () {
      if (mounted) {
        setState(() {
          _isClicked = false;
        });
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$CurrentDiceRoll.png', width: 200, height: 200),

        //Size Box To add space between widgets
        const SizedBox(height: 20),
        // const StyledText("Hello World"),
        ElevatedButton(
          onPressed: OnPressRollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.yellow,
            backgroundColor: _isClicked ? Colors.white : Colors.black, // change here
            textStyle: TextStyle(fontSize: 24),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
