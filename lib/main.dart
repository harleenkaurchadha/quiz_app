import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //It runs our app when it is booted up
}

class MyApp extends StatefulWidget {   //defines UI of the app which is stateful & will redraw the widgets on the screen
  @override
  State<StatefulWidget> createState() {   //stateful widget store their mutable state in seperate object created by createState
    // TODO: implement createState
   return MyAppState();               //both classes are connected
  }
}

class MyAppState extends State<MyApp> {  //state class contains widget's mutable state

  var questionIndex =0;
  void answerQuestion(){
    setState(() {           //re run the build method hence updates are reflected on screen
      questionIndex = questionIndex +1;

    });
//    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    //build is called by flutter when we try to draw something on screen
    var questions= [       //list of string (questions)
      'WHAT\'S YOUR FAVOURITE COLOR?',
      'WHAT\'S YOUR FAVOURITE ANIMAL?',
      'WHAT\'S YOUR FAVOURITE PLACE',
    ];
    return MaterialApp(
        home: Scaffold(
      //scaffold is used for creating base page design
      appBar: AppBar(
        title: Center(child: Text('QUIZ TIMEE!!')),
      ),
      body: Column(children: [
        Center(child: Te xt(questions[questionIndex])),
        RaisedButton(
          child: Text('ANSWER 1'),    //text in the widget will follow child argument
          onPressed: answerQuestion,  //we'll pass pointer to function since we dont want to execute function everytime it is encountered
        ),
        RaisedButton(
          child: Text('ANSWER 2'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('ANSWER 3'),
          onPressed: answerQuestion,
        ),
      ]),
    ));
  }
}
