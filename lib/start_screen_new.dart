import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreenNew extends StatelessWidget {
  const StartScreenNew({super.key});
  @override
  Widget build(context) {
    return Container(
      width: double.infinity, // biar full screen
      height: double.infinity,
      color: const Color.fromARGB(255, 33, 33, 33),
      child: Center(
        child: Column(
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
            OutlinedButton.icon(
              onPressed: (){}, 
              style: OutlinedButton.styleFrom(
                // backgroundColor: const Color.fromARGB(255, 175, 10, 10),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              label: const Text('Start Quiz'),
              icon: const Icon(Icons.thumb_up_alt),
            )
          ],
        ),
      ),
    );
  }
}