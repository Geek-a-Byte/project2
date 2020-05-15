import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/settings.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String title = "Sign in";
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  signup() async {
    var response;
    if (passwordcontroller.text == confirmpasswordcontroller.text) {
      var data = {
        "email": emailcontroller.text,
        "password": passwordcontroller.text
      };

      response =
          await http.post(baseURL + "/signup.php", body: jsonEncode(data));
      print(response.body);
      SuccessAlertBox(
          context: context, title: "great", messageText: response.body);
      Navigator.pushNamed(context, '/dashboard');

      /// Navigator.pushNamed(context, '/dashboard');
      /*,style: TextStyle(fontSize: 15,color: Colors.black),*/

    } else {
      WarningAlertBox(
          context: context,
          title: "wait!",
          messageText: "password and confirm pasword doesn't match.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
        title: Text(
          'Home',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Item 1',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            /*gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors:[ 
          Colors.black,
          Colors.pink[900],
          Colors.pink[800],
          Colors.black
          ]
    )*/

            image: DecorationImage(
                image: AssetImage('assets/abstract.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                )),

            /*shape: BeveledRectangleBorder(
  
      borderRadius: BorderRadius.circular(10.0),
  
    ),*/

            /*shape: StadiumBorder(
  
    side: BorderSide(
  
      color: Colors.black,
  
      width: 2.0,
  
    )
  
    ),*/

            margin: EdgeInsets.all(18.0),

            //color: Color(hashCode),

            //color: Color.fromRGBO(100, 10, 50, 5.0),

            //color : const Color(0XFF880E4F), //0xff hocche opacity

            color: Color.fromARGB(30, 50, 2, 80),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Sign Up Form",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                letterSpacing: 2,
                                wordSpacing: 10,
                                fontWeight: FontWeight.w200))),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.redAccent[100],
                        ),
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          labelText: "Email : ",

                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.white),

                          hintText: "yourEmailId@gmail.com",

                          hintStyle: TextStyle(color: Colors.blueGrey),

                          enabledBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),

                          // and:

                          focusedBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        cursorColor: Colors.black,
                        cursorWidth: 7.000000,
                        cursorRadius: Radius.elliptical(10, 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password : ",

                          hintText: "*********",

                          labelStyle: TextStyle(color: Colors.white),

                          enabledBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),

                          // and:

                          focusedBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: confirmpasswordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm Password : ",

                          hintText: "*********",

                          labelStyle: TextStyle(color: Colors.white),

                          enabledBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),

                          // and:

                          focusedBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.person_add, color: Colors.white),
                                Text(
                                  "Sign up",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            color: Colors.black,
                            onPressed: signup),

                        RaisedButton(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.account_circle, color: Colors.white),
                                Text(
                                  title,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            color: Colors.black,
                            onPressed: () {
                              /*setState(() {
  
                       //title=emailcontroller.text;                     
  
                     });*/
                              Navigator.pushNamed(context, '/signin');
                            }), //raised button
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//? this is a question
//* this is an important part of code or important comment
//TODO: this is for future plans of refactoring or updating the codes with new features
//! this is the error/mistake/bad execution of code which should be avoided for the next time
