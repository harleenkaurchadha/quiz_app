import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //It runs our app when it is booted up
}

class MyApp extends StatelessWidget {
  //stateless widget is a base class provided by material.dart to create widgets
  @override
  //indicating to override the build functn and providing our own definition
  Widget build(BuildContext context) {
    //build is called by flutter when we try to draw something on screen
    return MaterialApp(
        home: Scaffold(
      //scaffold is used for creating base page design
      appBar: AppBar(
        title: Center(child: Text('QUIZ TIMEE!!')),
      ),
      body: Column(children: [
        Center(child: Text('What is your favourite colour')),
        RaisedButton(
          child: Text('PINK'),
          onPressed: null,
        ),
        RaisedButton(
          child: Text('BLACK'),
          onPressed: null,
        ),
        RaisedButton(
          child: Text('BLUE'),
          onPressed: null,
        ),
      ]),
    ));
  }
}
