import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: const [
            Color.fromARGB(255, 14, 3, 103),
            Color.fromARGB(255, 14, 3, 103),
            Color.fromARGB(255, 14, 3, 103),
          ],
        ),
      )
    ),
  );
}
  