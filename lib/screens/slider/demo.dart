import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tovuti_halmashauri/models/slider_model.dart';

class DemoSlider extends StatefulWidget {
  @override
  SliderState createState() => new SliderState();
}

class SliderState extends State<DemoSlider> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        reverse: false,
        height: double.infinity,
        aspectRatio: 16/9,
        viewportFraction: 1.0,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
        items: pages.map((items){
          return Material(
              color: Color(items.screenColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 80.0),
                  Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFf7fbff),
                        backgroundImage: AssetImage(items.assetPath),
                        radius: 100.0,
                      ),
                      width: 200.0,
                      height: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        shape: BoxShape.circle,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 60.0, right: 40.0, bottom: 10.0),
                    child: Text(
                      items.personName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(items.textColor),
                          fontWeight: FontWeight.w200,
                          fontSize: 30.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 60.0, right: 40.0, bottom: 10.0),
                    child: Text(
                      items.personTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(items.textColor),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 60.0, right: 40.0, bottom: 10.0),
                    child: Text("\" "+
                      items.personQuote+" \"",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(items.textColor),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            );
        }).toList()
    );
  }

  

}