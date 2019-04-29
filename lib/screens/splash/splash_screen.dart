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
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Color(0xFF1AC5FF),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        height: 100.0,
                        padding: const EdgeInsets.all(8.0),
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('assets/coat_arms.png'),
                            fit: BoxFit.fill),
                          shape: BoxShape.rectangle,
                        )
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                top: 80.0,
                                bottom: 20.0,
                                left: 40.0,
                                right: 40.0,
                              ),
                              child: Text("Ndugu Karibu, \nProgram hii ya Tovuti za Halmashauri na Serikali za Mitaa, imesanifiwa na Wizara ya TAMISEMI, kitengo cha Tehama wakishirikian na wadau wa Maenedeleo Tanzania.", 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400
                              ), textAlign: TextAlign.center,),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        child: CircularProgressIndicator(
                          strokeWidth: 4.0,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30.0), child:Text('Toleo 3.0.3', 
                      style: TextStyle(
                        color: Colors.white54),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}