import 'dart:developer';

import 'package:flutter/material.dart';
import '../data/questions.dart';
import 'second_screen.dart';
import '../widget/my_sized_box.dart';

 class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<String> selectedAnswer = [];
  List<String> finalselectedAnswer = [];

  
  @override
  Widget build(BuildContext context) {
    void chooseAnswer(String answer){
    log(answer.toString());
    selectedAnswer.add(answer);
  }

  List<String> finalAnswer (){
    if(selectedAnswer.length == Questions().question.length-1){
      // ignore: avoid_print
      print('call');
      finalselectedAnswer= selectedAnswer;
      selectedAnswer.clear();
      return  finalselectedAnswer;
    }
    else{
      finalselectedAnswer= selectedAnswer;
      return  finalselectedAnswer;
    }
    
  }

  
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                 Colors.deepPurpleAccent,
                 Colors.purpleAccent,
                 ],
          )),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/quiz_logo.png",
              width: 350,
              height: 350,
            ),
            mySizedBox(height: 80),
            const Text(
              'Quiz App',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            mySizedBox(height: 50),
            OutlinedButton.icon(
              style:OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondScreen(chooseAnswer,finalAnswer())));
              } ,
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              label: const Text(
                'Start Quiz',
              ))
          ])),
    );
  }
}

