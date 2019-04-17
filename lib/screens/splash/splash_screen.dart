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
      Navigator.of(context).pushReplacementNamed('/homeScreen')
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Color(0xFF27ae60),
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
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text("OR-Tamisemi \nTovuti Halmashauri", 
                              style: TextStyle(
                                color: Colors.greenAccent
                              ), textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 80.0,
                                bottom: 20.0,
                                left: 80.0,
                                right: 80.0,
                              ),
                              child: Text("Ndugu Karibu, \nProgram hii ya Tovuti za Halmashauri na Serikali za Mitaa, imesanifiwa na Wizara ya TAMISEMI, kitengo cha Tehama wakishirikian na wadau wa Maenedeleo Tanzania.", 
                              style: TextStyle(
                                fontFamily: "Open Sans",
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
                          strokeWidth: 2.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30.0), child:Text('Toleo 3.0.3', style: TextStyle(color: Colors.greenAccent),),),
                      
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