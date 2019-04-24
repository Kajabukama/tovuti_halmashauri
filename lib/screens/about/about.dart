import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/constants/contents.dart';

class AboutScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Taarifa"),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: "Kuhusu"),
                Tab(text: "Kanusho"),
                Tab(text: "Sera ya Faragha")
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      padding: EdgeInsets.only(bottom: 30.0, top: 20.0),
                      child: Image(
                        image: AssetImage("assets/coat_arms.png"),
                      )
                    ),
                    Container(
                      child: Text("Tovuti za Mikoa na Halmashauri", style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700
                      ), textAlign: TextAlign.center,),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Hakimiliki. 2019 OR-TAMISEMI", style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Toleo 3.0.3", style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      alignment:Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
                      child: Text(Contents.About, style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500
                      ), textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: 100.0,
                      padding: EdgeInsets.only(bottom: 20.0, top: 10.0),
                      child: Image(
                        image: AssetImage("assets/usaid_logo.jpg"),
                      )
                    ),
                    
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text("Kanusho", 
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      child: Text(Contents.Disclaimer, textAlign: TextAlign.start,
                      style: TextStyle(
                        
                      ),),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: Text("Sera ya Faragha",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      child: Text(Contents.Privacy),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                      child: Text("Mabadiliko ya Sera ya Faragha.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      child: Text(Contents.PrivacyChange),
                    )
                  ],
                )
              ),
            ],
          )
        ),
      );
  }
}