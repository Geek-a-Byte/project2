import 'package:flutter/material.dart';
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

  gotosignup()
  {
    Future.delayed(const Duration(milliseconds: 1500), () 
    {
  
    Navigator.pushReplacementNamed(context, '/SignUp');
  
 }
);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
      Container(
        decoration: new BoxDecoration(

      image: DecorationImage(
          image: AssetImage('assets/watch.jpg'),
          fit: BoxFit.fitHeight
      ),
    ),
      )

      /*Center(
              child : Column(//horizontally alighment of widget
           mainAxisAlignment: MainAxisAlignment.center,//vertically alignment of widget
            children:<Widget>[
             
               Image.asset("assets/watch.jpg",fit: BoxFit.fitHeight,)
               
               
           ]
           
        ),
        
      ),*/
      
      
              

               
               
           
           
        );
        
      
    
  }
}