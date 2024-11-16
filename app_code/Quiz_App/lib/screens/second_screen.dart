import 'package:flutter/material.dart';
import '../data/questions.dart';
import 'result_screen.dart';
import '../widget/my_elevated_button.dart';
 class SecondScreen extends StatefulWidget {
  
 const SecondScreen(this.selectedAnswer,this.finalAnswer,{super.key});

  final void Function (String) selectedAnswer;
  final List<String> finalAnswer;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _currentIndex =0 ;
  @override
  
  @override
  Widget build(BuildContext context) {
    void answerQuestion (String answer){
    setState(() {
      widget.selectedAnswer(answer);
      _currentIndex++;
    });
  }

  
    final currentQuestion = Questions().question[_currentIndex];
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
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentQuestion.text,
                  style: const TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  //higher order function accept a function inside it 
                  //map change list of strings to list of widget
                  ...currentQuestion.getshuffelAnswers().map((item){
                    return Container(
                      margin: const EdgeInsets.all(5),
                      child :
                     _currentIndex==Questions().question.length-1?
                      myElevatedButton(text:item ,
                      onPressed: () 
                     {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ResultScreen(widget.finalAnswer)));}) :
                      myElevatedButton(text:item, onPressed: () => answerQuestion(item))
                      );
                  }),
              ]
            ),
          )
        )
          
    );
  }
}