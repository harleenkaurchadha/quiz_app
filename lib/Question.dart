import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context){
  return Container(                //container widget wrapped around text
    width: double.infinity,        //container will take as much size and width as it can get
    margin: EdgeInsets.all(20),    //space around all sides of container
    child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),
  );


  }
}