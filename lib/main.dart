import 'package:flutter/material.dart';
import 'start_screen.dart';

void main(){
  runApp(MaterialApp(
    title: "Quiz App",
    home : Scaffold(
      body:  Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 53, 27, 124)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft
            ),
        ),
        child: const StartScreen(),
      )
    )
  ));
}