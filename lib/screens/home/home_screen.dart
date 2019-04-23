import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/screens/slider/slider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF00bfff),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: double.infinity,
            // color: Color(0xFF2d98da),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 70.0,
                    height: 70.0,
                    padding: const EdgeInsets.all(8.0),
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage('assets/coat_arms.png'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle,
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 60.0, right: 40.0, bottom: 30.0),
                  child: Text(
                    "Tovuti za Mikoa na Halmashauri Tanzania",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // fontFamily: "Open Sans",
                        color: Color(0xFFecf0f1),
                        fontWeight: FontWeight.w200,
                        fontSize: 23.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, left: 60.0, right: 40.0, bottom: 10.0),
                  child: Text(
                    "KANUSHO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFFecf0f1),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 40.0, right: 40.0, bottom: 10.0),
                  child: Text(
                    "Taarifa zote zilizopo katika programu hii ni mali ya Ofisi ya Rais Tawala za Mikoa na Serikali za Mitaa (OR-TAMISEMI) Hakuna madai yatakayotolewa kuhusu usahihi au uhalali wa maudhui ya programu hii. Ofisi ya Rais TAMISEMI haita lazimika kukubali dhima yoyote au ushauri unaotolewa kwenye programu hii.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFecf0f1),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100.0,
              alignment: Alignment.center,
              child: FlatButton(
                color: Color(0xFF48dbfb),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageSlider()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 98.0),
                  child: Text(
                    'Karibu',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
