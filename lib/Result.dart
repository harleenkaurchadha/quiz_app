import 'package:flutter/material.dart';

class Result extends StatelessWidget{
final int resultScore;

Result(this.resultScore);

 String get resultPhrase{           //getter
   String resultText;

   if(resultScore <=8){
  resultText='You are awsome and innocent';
}
 else if(resultScore <=12){
   resultText='pretty Likeable';
 }
 else if(resultScore <=24){
   resultText='You are Bad';
 }
 return resultText;
}

  @override
  Widget build(BuildContext context){

     return Center(child: Text(resultPhrase,
         style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
     ),
     );
  }

}