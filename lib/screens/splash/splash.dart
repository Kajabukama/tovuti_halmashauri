import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tovuti_halmashauri/screens/home/home_screen.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new HomeScreen(),
      title: new Text('Karibu OR-TAMISEMI',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.asset('assets/coat_arms.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
  }
}

