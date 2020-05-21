import 'package:flutter/material.dart';
import 'package:newapp/settings.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    gotosignup();
  }

  gotosignup() async {
    var abc = await getValue("isLoggedin");
    // if (abc == "true") {
    //   print(abc);
    //   Future.delayed(const Duration(milliseconds: 1500), () {
    //     Navigator.pushReplacementNamed(context, '/dashboard');
    //   });
    // } else {
    //   Future.delayed(const Duration(milliseconds: 1500), () {
    //     Navigator.pushReplacementNamed(context, '/SignUp');
    //   });
    // }

    if (abc == "true") {
      print(abc);
      Future.delayed(const Duration(milliseconds: 1500), () {
        Navigator.pushReplacementNamed(context, '/SignUp');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/aurora.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
