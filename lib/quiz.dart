import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void SwitchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        title: "Quiz App",
        home: Scaffold(
            body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Color.fromARGB(255, 53, 27, 124)],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(SwitchScreen)
              : const QuestionScreen(),
        )));
  }
}
