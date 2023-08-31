import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'ans_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onSelectAns, super.key});

  final void Function(String answer) onSelectAns;

  @override
  State<QuestionScreen> createState() {
    return _QtuestionScreen();
  }
}

class _QtuestionScreen extends State<QuestionScreen>{
  var currntQuestionIndex = 0;

  void ansQuestion(String answer){
    widget.onSelectAns(answer);
    setState(() {
      currntQuestionIndex++;
    });
  }
  
  @override
  Widget build(context){
    final currntQuestion = question[currntQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currntQuestion.text,
            style:
                GoogleFonts.lato(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 80,),
            ...currntQuestion.getShuffled().map((e) {
              return AnsButton(
                ansText: e ,onTap:(){
                ansQuestion(e);
              });
              }),
          ],
        ),
      ),
    );
  }
}
