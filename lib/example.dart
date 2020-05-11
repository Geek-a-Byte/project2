import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  

 Example({Key key}) : super(key: key);

  @override
   _ExampleState createState() =>  _ExampleState();
   
}

class  _ExampleState extends State <Example> {
  @override
  Widget build(BuildContext context) {

    return Container
    (
       child: Container(),
    );
  }
}

class Example2 extends StatefulWidget {
 Example2({Key key}) : super(key: key);

  @override
   _Example2State createState() =>  _Example2State();
}

class  _Example2State extends State <Example2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(),
    );
  }
}