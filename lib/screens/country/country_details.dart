import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tovuti_halmashauri/constants/contents.dart';
import 'package:tovuti_halmashauri/constants/popup.dart';

import 'package:tovuti_halmashauri/models/article_model.dart';
import 'package:tovuti_halmashauri/screens/about/about.dart';
import 'package:tovuti_halmashauri/screens/home/home_screen.dart';

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
              centerTitle: true,
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    Share.share(Contents.Share);
                  },
                  icon: Icon(Icons.share),
                ),
                PopupMenuButton<String>(
                  onSelected: choiceAction,
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (BuildContext context) {
                    return Constants.choices.map((String choice){
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
                
              ],
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    width: 250.0,
                    child: Text(
                      article.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
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
  void choiceAction(String choice) {
    switch(choice){
      case Constants.About:
        Navigator.push(context, MaterialPageRoute(builder: (_)=> AboutScreen()));
        break;
      case Constants.Home:
        Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeScreen()));
        break;
    }
  }
}