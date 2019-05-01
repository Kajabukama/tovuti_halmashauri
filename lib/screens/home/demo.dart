import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/magufuli.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              color: Colors.white,
              elevation: 12.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Jamhuri ya Muungano Tanzania",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                    child: Text(
                        "Taarifa zote zilizopo katika programu hii ni mali ya Ofisi ya Rais Tawala za Mikoa na Serikali za Mitaa (OR-TAMISEMI) Hakuna madai yatakayotolewa kuhusu usahihi au uhalali wa maudhui ya programu hii. Ofisi ya Rais TAMISEMI haita lazimika kukubali dhima yoyote au ushauri unaotolewa kwenye programu hii.", textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}