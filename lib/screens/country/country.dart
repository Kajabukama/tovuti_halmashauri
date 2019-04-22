import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tovuti_halmashauri/models/menu_model.dart';
import 'package:tovuti_halmashauri/models/article_model.dart';
import 'package:tovuti_halmashauri/screens/country/country_details.dart';

class CountryScreen extends StatefulWidget {
  @override
  CountryState createState() => new CountryState();
}
class CountryState extends State<CountryScreen> {

  List<Article> _articles = List<Article>();

  Future<List<Article>> fetchArticles() async {
    var url = "http://tovuti.youtanzaniaadventure.co.tz/api/articles/";
    var response = await http.get(url);
    var articles = List<Article>();
    if(response.statusCode == 200){
      var articlesJson = json.decode(response.body);
      for(var articleJson in articlesJson){
        articles.add(Article.fromJson(articleJson));
      }
    }
    return articles;
  }

  @override
  void initState() {
    fetchArticles().then((value) {
      setState(() {
        _articles.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Color(0xFF222f3e),
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
                          width: 80.0,
                          height: 80.0,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/coat_arms.png')
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(0.0))
                          )),
                          
                        ],
                      )
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index){
                        return ListTile(
                          leading: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(items[index].assetPath)
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
              backgroundColor: Color(0xFF35c680),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                )
              ],
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Habari na Matukio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset("assets/president.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: ListView.separated(
        padding: EdgeInsets.only(bottom: 20.0, top: 10.0),
        separatorBuilder: (context, index) => Divider(
          color: Colors.black12,
        ),
        itemCount: _articles.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              alignment: Alignment.topLeft,
              width: 50.0,
              height: 50.0,
              // padding: const EdgeInsets.all(8.0),
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(_articles[index].imageAsset),
                  fit: BoxFit.fill
                ),
                color: Colors.black.withOpacity(0.2),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0))
              )),
            trailing: Icon(Icons.chevron_right),
            title: Text(
              _articles[index].title, 
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0
              ),
            ),
            subtitle: Text("Imetolewa "+_articles[index].published),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(article: _articles[index],))
              );
            },
          );
        },
      )
      ),
    );
}
}