import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget{

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion});
    @override

  Widget build(BuildContext context){

    return Column(children: [
    Center(child: Question(        //Question class constructor call to change input data
    questions[questionIndex]['questionText'],
    )),
    ...(questions[questionIndex]['answers']as List<String>).map((answer){   //map the list into list of widgets
    return Answer(answerQuestion,answer);    //functn in map is executed for every element in answer list
    }).toList(),

    ],
    );
  }

}