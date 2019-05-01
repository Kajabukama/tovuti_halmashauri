import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => {
      Navigator.of(context).pushReplacementNamed('/sliderScreen')
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: Image(
              fit: BoxFit.fitHeight,
              image: AssetImage("assets/magufuli.jpg"),
              colorBlendMode: BlendMode.luminosity,
              color: Colors.black.withOpacity(0.85),
            ),
          ),
          Positioned(
            bottom: 60.0,
            left: 10.0,
            right: 10.0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Text("Inachakata ...", 
                    style: TextStyle(
                      color: Colors.greenAccent, 
                      fontSize: 18.0
                    ),
                  ),
                ],
              )
            )
          ),
        ],
      )
    );
  }
}