import 'package:flutter/material.dart';
import 'summery_item.dart';
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
              return SummaryItem(e);
            }).toList(),
        ),
      ),
    );
  }
}