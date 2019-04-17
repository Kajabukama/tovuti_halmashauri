import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tovuti_halmashauri/models/region_model.dart';

class CountryScreen extends StatefulWidget {
  @override
  CountryScreenState createState() => new CountryScreenState();
}

class CountryScreenState extends State<CountryScreen> {

  Future<List<Region>> fetchRegions() async {
    var url = "http://tovuti.youtanzaniaadventure.co.tz/api/regions/";
    var response = await http.get(url);
    var regions = List<Region>();
    if(response.statusCode == 200){
      var regionsJson = json.decode(response.body);
      for(var regionJson in regionsJson){
        regions.add(Region.fromJson(regionJson));
      }
    }
    return regions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.add_a_photo),
        title: Text("OR-TAMISEMI"),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchRegions(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                    backgroundColor: Colors.green,
                  )
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(snapshot.data[index].poster),
                    ),
                    trailing: Icon(Icons.chevron_right),
                    title: Text(
                      snapshot.data[index].region, 
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0
                      ),
                    ),
                    subtitle: Text(snapshot.data[index].web_address),
                    onTap: () => {
                      
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
