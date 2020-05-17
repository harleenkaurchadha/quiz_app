import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';       //import all from question dart file


void main() {
  runApp(MyApp()); //It runs our app when it is booted up
}

class MyApp extends StatefulWidget {   //defines UI of the app which is stateful & will redraw the widgets on the screen
  @override
  State<StatefulWidget> createState() {   //stateful widget store their mutable state in seperate object created by createState
    // TODO: implement createState
   return _MyAppState();               //both classes are connected
  }
}

class _MyAppState extends State<MyApp> {  //state class contains widget's mutable state

  var _totalScore=0;
  var _questionIndex =0;

  void _answerQuestion(int score){
    setState(() {           //re run the build method hence updates are reflected on screen
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
//    print(questionIndex);
  }
  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });

  }
  @override
  Widget build(BuildContext context) {
    //build is called by flutter when we try to draw something on screen
    const _questions= [           //Map of String and list
      {
        'questionText':'WHAT\'S YOUR FAVOURITE COLOR?',
        'answers':[{'text':'Pink','score':6},{'text':'Red','score':8},{'text':'Blue','score':3}],
      },
      {
        'questionText':'WHAT\'S YOUR FAVOURITE ANIMAL?',
        'answers':[{'text':'Dog','score':6},{'text':'Rabbit','score':3},{'text':'Tiger','score':8}],
      },
      {
        'questionText':'WHAT\'S YOUR FAVOURITE PLACE',
        'answers':[{'text':'Paris','score':2},{'text':'London','score':5},{'text':'Dubai','score':8}],
      },

    ];
    return MaterialApp(
        home: Scaffold(
      //scaffold is used for creating base page design
      appBar: AppBar(
        title: Center(child: Text('QUIZ TIMEE!!')),
      ),
      body: _questionIndex < _questions.length ?
          Quiz(answerQuestion: _answerQuestion,questions: _questions,questionIndex:_questionIndex) :      //named arguments
          Result(_totalScore,_resetQuiz),
    ),

        );
  }
}
