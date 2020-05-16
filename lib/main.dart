import 'package:flutter/material.dart';
import './Question.dart';       //import all from question dart file
import './Answer.dart';

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
    var questions= [           //Map of String and list
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
      body: Column(children: [
        Center(child: Question(        //Question class constructor call to change input data
            questions[_questionIndex]['questionText'],
        )),
        ...(questions[_questionIndex]['answers']as List<String>).map((answer){   //map the list into list of widgets
          return Answer(_answerQuestion,answer);    //functn in map is executed for every element in answer list
        }).toList(),

      ],
    ),
    ),
    );
  }
}
