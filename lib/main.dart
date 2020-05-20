import 'package:flutter/material.dart';
import 'package:newapp/SignUp.dart';
import 'package:newapp/dashboard.dart';
import 'package:newapp/signin.dart';
import 'package:newapp/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/SignUp': (context) => SignUp(),
        '/dashboard': (context) => DashBoard(),
        '/signin': (context) => SignIn(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
