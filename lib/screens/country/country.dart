import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tovuti_halmashauri/constants/popup.dart';
import 'package:tovuti_halmashauri/models/article_model.dart';
import 'package:tovuti_halmashauri/screens/about/about.dart';
import 'package:tovuti_halmashauri/screens/country/country_details.dart';
import 'package:tovuti_halmashauri/screens/dashboard/dashboard.dart';
import 'package:tovuti_halmashauri/shared/drawer.dart';
import 'package:tovuti_halmashauri/shared/endpoints.dart';

class CountryScreen extends StatefulWidget {
  @override
  CountryState createState() => new CountryState();
}
class CountryState extends State<CountryScreen> {

  List<Article> _articles = List<Article>();
  var isLoading = false;

  Future<List<Article>> fetchArticles() async {
    setState(() { isLoading= true; });
    var url = Endpoint.articles;
    var response = await http.get(url);
    var articles = List<Article>();
    if(response.statusCode == 200){
      setState(() { isLoading= false;});
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
      setState(() { _articles.addAll(value); });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SharedDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              actions: <Widget>[
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
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Habari Mbalimbali"),
                  background: Image.asset("assets/president.jpg",
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.4),
                    colorBlendMode: BlendMode.luminosity,
                  )),
            ),
          ];
        },
        body: isLoading ? Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                strokeWidth: 2.0,
              ),
              SizedBox(height: 50.0,),
              Text(
                "Inachakata...", 
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black45,
                  fontWeight: FontWeight.w500
                ),)
            ],
          ),
        )
        : ListView.separated(
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
              )
            ),
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
  void choiceAction(String choice) {
    switch(choice){
      case Constants.About:
        Navigator.push(context, MaterialPageRoute(builder: (_)=> AboutScreen()));
        break;
      case Constants.Home:
        Navigator.push(context, MaterialPageRoute(builder: (_)=> DashboardScreen()));
        break;
    }
  }
}