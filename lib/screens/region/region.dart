import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:tovuti_halmashauri/models/region_model.dart';
import 'package:tovuti_halmashauri/screens/region/region_detail.dart';
import 'package:tovuti_halmashauri/shared/endpoints.dart';
import 'package:tovuti_halmashauri/shared/search.dart';
import 'package:tovuti_halmashauri/shared/slide_page.dart';
import 'package:tovuti_halmashauri/widgets/indicator.dart';
import 'package:tovuti_halmashauri/widgets/popup.dart';

class RegionScreen extends StatefulWidget {
  @override
  RegionScreenState createState() => new RegionScreenState();
}

class RegionScreenState extends State<RegionScreen> {

  List<Region> _regions = List<Region>();
  var isLoading = false;

  Future<List<Region>> fetchRegions() async {
    setState(() {
      isLoading= true;
    });
    var url = Endpoint.regions;
    var response = await http.get(url);
    var regions = List<Region>();
    if(response.statusCode == 200){
      setState(() {
        isLoading= false;
      });
      var regionsJson = json.decode(response.body);
      for(var regionJson in regionsJson){
        regions.add(Region.fromJson(regionJson));
      }
    }
    return regions;
  }

  @override
  void initState() {
    fetchRegions().then((value) {
      setState(() {
        _regions.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Mikoa na Halmashauri"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(
                context: context,
                delegate: DataSearch()
              );
            },
          ),
          SharedPopup()
        ],
      ),
      body: isLoading ? LoadingIndicator() 
      : ListView.separated(
        padding: EdgeInsets.only(bottom: 20.0, top: 10.0),
        separatorBuilder: (context, index) => Divider(
          color: Colors.black12,
        ),
        itemCount: _regions.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              width: 60.0,
              height: 60.0,
              // padding: const EdgeInsets.all(8.0),
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(_regions[index].poster)
                ),
                color: Colors.black.withOpacity(0.2),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(6.0))
              )),
            trailing: Icon(Icons.chevron_right),
            title: Text(
              _regions[index].region, 
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 21.0
              ),
            ),
            subtitle: Text(
              _regions[index].zone + "\nMji makuu: "+
              _regions[index].capital
            ),
            onTap: (){
              Navigator.push(
                context,
                PageSlideTransition(builder: (context) => DetailScreen(region: _regions[index],))
              );
            },
          );
        },
      )
    );
  }
}
