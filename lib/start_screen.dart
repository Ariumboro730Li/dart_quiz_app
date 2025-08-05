import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 400),
        const SizedBox(height: 30),
        Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: (){
          },
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 175, 10, 10),
            foregroundColor: Colors.black87,
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          child: const StyledText('Start Quiz', 15),
        ),
      ],
    );
  }
}