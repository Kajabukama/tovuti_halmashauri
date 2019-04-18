import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/models/menu_model.dart';

class CountryScreen extends StatefulWidget {
  @override
  CountryScreenState createState() => new CountryScreenState();
}

class CountryScreenState extends State<CountryScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Color(0xFF27ae60),
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
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/coat_arms.png')
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(0.0))
                          )),
                          SizedBox(height: 20.0,),
                          Text("OR-TAMISEMI", style: TextStyle(color: Colors.white),),
                        ],
                      )
                    ),
                  ),
                  Divider(height: 3.0,),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index){
                        return ListTile(
                          leading: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(items[index].assetPath)
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
      appBar: AppBar(
        title: Text("Tanzania")
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Tanzania information Screen")
          ],
        ),
      ),
    );
  }
}