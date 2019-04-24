import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/models/menu_model.dart';

class SharedDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
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
      );
  }
}