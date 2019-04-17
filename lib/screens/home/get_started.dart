import 'package:flutter/material.dart';
import '../slider/page_view.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Material(
          color: Color(0xFF1e90ff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100.0),
              Container(
                  width: 140.0,
                  height: 140.0,
                  padding: const EdgeInsets.all(8.0),
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage('assets/coat_arms.png'),
                        fit: BoxFit.fill),
                    shape: BoxShape.rectangle,
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 60.0, right: 40.0, bottom: 40.0),
                child: Text(
                  "Tovuti za Mikoa na Halmashauri",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Open Sans",
                      color: Color(0xFFecf0f1),
                      fontWeight: FontWeight.w200,
                      fontSize: 30.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0.0, left: 60.0, right: 40.0, bottom: 10.0),
                child: Text(
                  "KANUSHO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Color(0xFFecf0f1),
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 40.0, right: 40.0, bottom: 10.0),
                child: Text(
                  "Taarifa zote zilizopo katika programu hii ni mali ya Ofisi ya Rais Tawala za Mikoa na Serikali za Mitaa (OR-TAMISEMI) Hakuna madai yatakayotolewa kuhusu usahihi au uhalali wa maudhui ya programu hii. Ofisi ya Rais TAMISEMI haita lazimika kukubali dhima yoyote au ushauri unaotolewa kwenye programu hii.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
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
            height: 150.0,
            alignment: Alignment.center,
            child: FlatButton(
              color: Colors.yellow,
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
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
