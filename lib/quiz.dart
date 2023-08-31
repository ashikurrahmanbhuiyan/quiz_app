import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'start_screen.dart';
import 'question.dart';
import 'result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void  switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }


  void chooseAns(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == question.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartScreen(){
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswers.clear();
    });
    
  }

  @override
  Widget build(context) {

    Widget screenWiget = StartScreen(switchScreen);
    if(activeScreen == 'question-screen') {
      screenWiget = QuestionScreen(
        onSelectAns: chooseAns,
      );
    }
    if(activeScreen == 'result-screen') {
      screenWiget = Result(userAns: selectedAnswers, restartButton: restartScreen,);
    }

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
          child: screenWiget
        )));
  }
}

