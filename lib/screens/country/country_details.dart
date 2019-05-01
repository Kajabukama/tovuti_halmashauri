import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/models/article_model.dart';
import 'package:tovuti_halmashauri/widgets/popup.dart';

class DetailScreen extends StatefulWidget {
  final Article article;
  DetailScreen({Key key, @required this.article}) : super(key: key);
  @override
  DetailScreenState createState() => new DetailScreenState(article);
}

class DetailScreenState extends State<DetailScreen> {

  Article  article;
  DetailScreenState(this.article);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              actions: <Widget>[
                SharedPopup()
              ],
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Habari"),
                  background: Image.network(article.imageAsset,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.4),
                    colorBlendMode: BlendMode.luminosity,
                  )),
            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10.0),
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: Image(
                            image: AssetImage("assets/coat_arms.png"),
                          ),
                        )
                      ),
                      Container(
                        child: Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Text(article.title, 
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Text("Imetolewa Tarehe " + article.published, 
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black38
                                  ),
                                ),
                              )
                            ],
                          )
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
                  child: Text(article.content,
                    style: TextStyle(
                      fontSize: 16.0
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}