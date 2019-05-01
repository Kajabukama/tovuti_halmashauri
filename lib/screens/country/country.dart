import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tovuti_halmashauri/models/article_model.dart';
import 'package:tovuti_halmashauri/screens/country/country_details.dart';
import 'package:tovuti_halmashauri/shared/drawer.dart';
import 'package:tovuti_halmashauri/shared/endpoints.dart';
import 'package:tovuti_halmashauri/shared/slide_page.dart';
import 'package:tovuti_halmashauri/widgets/indicator.dart';
import 'package:tovuti_halmashauri/widgets/popup.dart';

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
                SharedPopup()
              ],
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Habari Mbalimbali"),
                background: Image.asset("assets/jpm.jpg",
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.4),
                  colorBlendMode: BlendMode.luminosity,
                )
              ),
            ),
          ];
        },
        body: isLoading ? LoadingIndicator()
        : RefreshIndicator(
            color: Colors.red,
            backgroundColor: Colors.white,
            onRefresh: fetchArticles,
            child: ListView.separated(
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
                      PageSlideTransition(builder: (_) => DetailScreen(article: _articles[index],))
                    );
                  },
                );
              },
            ),
          )
      ),
    );
  }
}