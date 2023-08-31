import 'package:flutter/material.dart';
class QuesSummery extends StatelessWidget {
  const QuesSummery(this.summeryData,{super.key});
  
  final List<Map<String,Object>> summeryData;
  @override
  Widget build(context){
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: 
            summeryData.map((e) {
              return Row(
                children: [
                  Text(((e['question_index'] as int) +1).toString()),
                  Expanded(
                    child: Column(children: [
                      Text(e['question'] as String),
                      const SizedBox(height: 5),
                      Text(e['user_ans'] as String),
                      Text(e['correct_ans'] as String),
                    ],),
                  )
                ],
              );
            }).toList(),
        ),
      ),
    );
  }
}