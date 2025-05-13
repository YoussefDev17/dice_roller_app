import 'package:flutter/material.dart';
import 'package:first_app/container_gradient.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: ContainerGradient(
          Color.fromARGB(255, 33, 219, 243),
          Color.fromARGB(255, 234, 250, 5),
          Alignment.topLeft,
          Alignment.bottomCenter,
        ),
      ),
    ),
  );
}

// This is a simple Flutter application that displays "Hello World" in the center of the screen.
