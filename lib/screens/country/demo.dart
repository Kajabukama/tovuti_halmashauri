import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 280.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Habari na Matukio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset("assets/suluhu.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.white,
          child: Text("Sample Text"),
        ),
      ),
    );
}
}