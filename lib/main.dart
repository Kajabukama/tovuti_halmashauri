import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/screens/dashboard/dashboard.dart';
import 'package:tovuti_halmashauri/screens/home/home_screen.dart';
import 'package:tovuti_halmashauri/screens/region/region.dart';
import 'package:tovuti_halmashauri/screens/slider/slider.dart';
import 'package:tovuti_halmashauri/screens/splash/splash_screen.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    fontFamily: "Eina",
    primaryColor: Colors.green,
    canvasColor: Colors.transparent,
    accentColor: Colors.greenAccent,
  ),
  home: SplashScreen(),
  routes: <String, WidgetBuilder>{
    '/splashScreen': (BuildContext context) => new SplashScreen(),
    '/homeScreen': (BuildContext context) => new HomeScreen(),
    '/regionScreen': (BuildContext context) => new RegionScreen(),
    '/dashboardScreen': (BuildContext context) => new DashboardScreen(),
    '/sliderScreen': (BuildContext context) => new PageSlider(),
  },

));


