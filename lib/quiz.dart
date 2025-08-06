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

  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: activeScreen == 'start-screen' ? StartScreenNew(switchScreen) : QuestionScreen(),
      )
    );
  }
}