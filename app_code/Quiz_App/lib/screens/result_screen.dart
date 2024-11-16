import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../widget/my_sized_box.dart';
import '../widget/my_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.finalAnswer, {super.key});
  final List<String> finalAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < finalAnswer.length; i++) {
      summary.add({
        'question_Index': i,
        'question': Questions().question[i].text,
        'answer': Questions().question[i].answers[0],
        'user_Answer': finalAnswer[i]
      });
    }
    return summary;
  }

  
  int numberOfRightQuestions(){
    int right = 0;
    for (int i = 0; i < finalAnswer.length; i++) {
      if(finalAnswer[i].toString() == Questions().question[i].answers[0].toString()){
        right++;
      }

    }
    return right;
  }
  


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.purpleAccent,
            ],
          )),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      myText(text: 'Result', fontSize: 50, mainText: true),
                      mySizedBox(height: 10),
                      myText(
                        text: 'You answerd ${numberOfRightQuestions()} out of ${Questions().question.length}'
                      , fontSize: 30, mainText: true),
                      mySizedBox(height: 5),
                      myText(text: 'Your answers is', fontSize: 20, mainText: true),
                      mySizedBox(height: 10),
                      ...getSummaryData().map((item) => Column(children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 20,
                                  child: myText(
                                      text:
                                          ((item['question_Index'] as int) + 1).toString(),fontSize: 15,mainText: false),
                                ),
                                mySizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    myText(
                                        text: item['question'].toString(),
                                        fontSize: 14,mainText: false),
                                        mySizedBox(height: 5),
                                    myText(
                                        text: 'Question answer : ${item['answer'].toString()}',
                                        fontSize: 14,mainText: false),
                                    myText(
                                        text: 'Your answer :${item['user_Answer'].toString()}',
                                        fontSize: 14,
                                        color: item['answer'].toString()==item['user_Answer'].toString()? const Color.fromARGB(255, 3, 47, 112) : Colors.red,mainText: false
                                        )
                                  ]),
                                )
                              ],
                            ),
                            mySizedBox(height: 10),
                          ])),
                          mySizedBox(height: 20),
                      TextButton.icon(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        label: const Text(
                          'Restart Quiz',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        icon: const Icon(
                          Icons.restart_alt,
                          color: Colors.blue,
                          size: 30,
                          ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
