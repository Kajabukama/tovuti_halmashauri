import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/models/menu_model.dart';

class CountryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Color(0xFF27ae60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/coat_arms.png')
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(0.0))
                          )),
                          SizedBox(height: 20.0,),
                          Text("OR-TAMISEMI", style: TextStyle(color: Colors.white),),
                        ],
                      )
                    ),
                  ),
                  Divider(height: 3.0,),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index){
                        return ListTile(
                          leading: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(items[index].assetPath)
                            ),
                            color: Colors.black.withOpacity(0.2),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                          )),
                          title: Text(
                            items[index].title,
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          subtitle: Text(
                            items[index].subtitle,
                            style: TextStyle(color: Colors.white54),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(height: 10.0, color: Colors.black26,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "www.tamisemi.go.tz",
                            style: TextStyle(color: Colors.white54),
                          ),
                          Padding(padding: EdgeInsets.only(top: 3.0)),
                          Text(
                            "Toleo 3.0.3",
                            style: TextStyle(color: Colors.white54),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
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
                  background: Image.asset("assets/kikwete.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          width: double.infinity,
          alignment: Alignment.topLeft,
          color: Colors.white,
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ),
      ),
    );
}
}