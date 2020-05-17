import 'package:flutter/material.dart';

class Result extends StatelessWidget{
final int resultScore;
final Function resetHandler;

Result(this.resultScore,this.resetHandler);

 String get resultPhrase{           //getter
   String resultText;

   if(resultScore <=8){
  resultText='You are awsome and innocent';
}
 else if(resultScore <=15){
   resultText='pretty Likeable';
 }
 else if(resultScore <=24){
   resultText='You are Bad';
 }
 return resultText;
}

  @override
  Widget build(BuildContext context){

     return Column(children: [
       Center(child: Text(resultPhrase,
         style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
     ),
     ),
     FlatButton(child: Text('RESTART QUIZ'),
         onPressed: resetHandler,
         textColor: Colors.green
     ),
     ],
     );
  }

}