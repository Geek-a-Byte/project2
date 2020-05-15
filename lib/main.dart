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
//how will you complete a new app within the next week
//you have to though
//ok try to google as much as you can
//don't take any help from unless you can't find any solution in the google
//ok start
