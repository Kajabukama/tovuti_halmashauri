import 'package:flutter/material.dart';

class RegionDetail extends StatefulWidget {
  @override
  RegionDetailState createState() => new RegionDetailState();
}

class RegionDetailState extends State<RegionDetail> {

  String region;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Some Region Detail"),
      ),
      body: Container(
        child: Center(
          child: Text("Display Region Details"),
        ),
      ),
    );
  }
}