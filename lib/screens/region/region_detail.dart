import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/models/region_model.dart';

class DetailScreen extends StatefulWidget {
  final Region region;
  DetailScreen({Key key, @required this.region}) : super(key: key);
  @override
  DetailScreenState createState() => new DetailScreenState(region);
}

class DetailScreenState extends State<DetailScreen> {
  Region  region;
  DetailScreenState(this. region);  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(region.region+" (Halmashauri "+region.districts+")"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("Display Region Details" + region.id),
        ),
      ),
    );
  }
}