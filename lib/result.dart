import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'ques_summery.dart';
import 'package:google_fonts/google_fonts.dart';
class Result extends StatelessWidget {
  const Result({required this.userAns, required this.restartButton, super.key});

  final List<String> userAns;
  final void Function() restartButton;

  List<Map<String,Object>> getSummery(){
      final List<Map<String,Object>> summery = [];
      for (var i = 0; i < userAns.length; i++) {
        summery.add({
          'question_index' : i,
          'question' : question[i].text,
          'correct_ans' : question[i].answers[0],
          'user_ans': userAns[i]
        });
      }
      return summery;
  }

  @override
  Widget build(context) {

    final numTotalQ = question.length, 
    numCorrectQ=getSummery().where((data){
       return data['user_ans'] == data['correct_ans'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'You answered $numCorrectQ out of $numTotalQ questions correctly!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 230, 200, 253),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
            const SizedBox(height: 30),
            QuesSummery(getSummery()),
            const SizedBox(height: 50),
            TextButton.icon(onPressed: restartButton, 
            icon: const Icon(Icons.refresh),
            label: const Text("Restart quiz",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  )))
        ]),
      ),
    );
  }
}
