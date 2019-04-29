import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:tovuti_halmashauri/constants/contents.dart';
import 'package:tovuti_halmashauri/constants/popup.dart';

import 'package:tovuti_halmashauri/models/region_model.dart';
import 'package:tovuti_halmashauri/models/district_model.dart';
import 'package:tovuti_halmashauri/screens/about/about.dart';
import 'package:tovuti_halmashauri/screens/dashboard/dashboard.dart';
import 'package:tovuti_halmashauri/shared/endpoints.dart';
import 'package:tovuti_halmashauri/widgets/indicator.dart';


class DetailScreen extends StatefulWidget {
  final Region region;
  DetailScreen({Key key, @required this.region}) : super(key: key);
  @override
  DetailScreenState createState() => new DetailScreenState(region);
}

class DetailScreenState extends State<DetailScreen> {

  Region  region;
  DetailScreenState(this.region);  

  List<District> _districts = List<District>();
  bool isLoading = false;

  Future<List<District>> fetchDistricts(var regid) async {
    setState(() {
      isLoading = true;
    });
    var url = Endpoint.districts+(regid).toString();
    var response = await http.get(url);
    var districts = List<District>();
    if(response.statusCode == 200){
      setState(() {
        isLoading = false;
      });
      var districtsJson = json.decode(response.body);
      for(var districtJson in districtsJson){
        districts.add(District.fromJson(districtJson));
      }
    }
    return districts;
  }

  @override
  void initState() {
    fetchDistricts(region.id).then((value) {
      setState(() {
        _districts.addAll(value);
      });
    });
    super.initState();
  }
  
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
                  title: Text("Mkoa wa "+region.region,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
                  background: Image.network(region.profile,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.4),
                    colorBlendMode: BlendMode.luminosity,
                  )),
            ),
          ];
        },
        body: isLoading ? LoadingIndicator()
      :ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black12,
          ),
          itemCount: _districts.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Container(
                width: 60.0,
                height: 60.0,
                // padding: const EdgeInsets.all(8.0),
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(_districts[index].poster)
                  ),
                  color: Colors.black.withOpacity(0.2),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))
                )),
              trailing: Icon(Icons.public, color: Colors.green.shade300,),
              title: Text(
                _districts[index].district, 
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0),
              ),
              subtitle: Text(_districts[index].web),
              onTap: () async {
                if (Platform.isAndroid) {
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>WebViewPage(_districts[index].web)));
                } else if (Platform.isIOS) {
                  await launch(_districts[index].web);
                }
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

class WebViewPage extends StatelessWidget {
  WebViewPage(this.url);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(url),
      ),
      body: WebView(
        initialUrl: url,
      )
    );
  }
}