import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'ans_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QtuestionScreen();
  }
}

class _QtuestionScreen extends State<QuestionScreen>{
  var currntQuestionIndex = 0;

  void ansQuestion(){
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
            style: const TextStyle(
                color: Color.fromARGB(255, 201, 153, 251),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 80,),
            ...currntQuestion.getShuffled().map((e) {
               
              return AnsButton(ansText: e , onTap:ansQuestion);
              }),
          ],
        ),
      ),
    );
  }
}
