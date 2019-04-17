import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/screens/region/region.dart';
import 'package:tovuti_halmashauri/screens/dashboard/dashboard.dart';
import 'package:tovuti_halmashauri/screens/slider/page_view.dart';
import 'package:tovuti_halmashauri/screens/splash/splash_screen.dart';
import 'package:tovuti_halmashauri/screens/home/home_screen.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    fontFamily: "Open Sans",
    primarySwatch: Colors.green,
    canvasColor: Colors.transparent,
    accentColor: Colors.greenAccent,
  ),
  home: CountryScreen(),
  routes: <String, WidgetBuilder>{
    '/splashScreen': (BuildContext context) => new SplashScreen(),
    '/homeScreen': (BuildContext context) => new HomeScreen(),
    '/dashboardScreen': (BuildContext context) => new DashboardScreen(),
    '/sliderScreen': (BuildContext context) => new PageSlider(),
    '/countryScreen': (BuildContext context) => new CountryScreen()
  },
));

