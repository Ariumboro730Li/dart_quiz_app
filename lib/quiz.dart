import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen_new.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreenNew(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        // body: screenWidget,
        body: Container(
          width: double.infinity, // biar full screen
          height: double.infinity,
          color: const Color.fromARGB(255, 130, 1, 181),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
