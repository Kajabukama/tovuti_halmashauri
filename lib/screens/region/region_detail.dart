import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tovuti_halmashauri/models/region_model.dart';
import 'package:tovuti_halmashauri/models/district_model.dart';
import 'package:tovuti_halmashauri/screens/region/web.dart';

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
  bool isloading = false;

  Future<List<District>> fetchDistricts(var regid) async {
    var url = "http://tovuti.youtanzaniaadventure.co.tz/api/districts/district/"+(regid).toString();
    var response = await http.get(url);
    var districts = List<District>();
    if(response.statusCode == 200){
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
  final webAsset = "http://tovuti.youtanzaniaadventure.co.tz/assets/posters/kilimanjaro.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              actions: <Widget>[
                IconButton(
                  onPressed: ()=>{},
                  icon: Icon(Icons.share),
                ),
                IconButton(
                  onPressed: ()=>{},
                  icon: Icon(Icons.more_vert),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Mkoa "+region.region,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
                  background: Image.network(region.profile,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(1.0),
                    colorBlendMode: BlendMode.softLight,
                  )),
            ),
          ];
        },
        body: ListView.separated(
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
              trailing: Icon(Icons.public, color: Colors.green.shade100,),
              title: Text(
                _districts[index].district, 
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 21.0
                ),
              ),
              subtitle: Text(
                _districts[index].web 
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => new WebViewScreen(district: _districts[index])));
              },
            );
          },
        )
      ),
    );
  }
}