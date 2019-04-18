import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kuhusu"),
      ),
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Center(
          child: Text("Kuhusu Mobile App hii"),
        ),
      ),
    );
  }
}