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

  var _questionIndex =0;
  void _answerQuestion(){
    setState(() {           //re run the build method hence updates are reflected on screen
      _questionIndex = _questionIndex + 1;

    });
//    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    //build is called by flutter when we try to draw something on screen
    const _questions= [           //Map of String and list
      {
        'questionText':'WHAT\'S YOUR FAVOURITE COLOR?',
        'answers':['Pink','Red','Blue'],
      },
      {
        'questionText':'WHAT\'S YOUR FAVOURITE ANIMAL?',
        'answers':['Dog','Rabbit','Tiger'],
      },
      {
        'questionText':'WHAT\'S YOUR FAVOURITE PLACE',
        'answers':['Paris','London','Dubai'],
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
          Result(),
    ),

        );
  }
}
