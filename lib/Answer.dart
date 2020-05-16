import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
final Function selectHandler;             //since we are passing pointer to a function as an argument in main.dart
final String answerText;

Answer(this.selectHandler,this.answerText);
  @override

  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color:Colors.cyan,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );

  }
}