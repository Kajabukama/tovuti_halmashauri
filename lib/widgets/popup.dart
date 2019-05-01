import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/constants/popup.dart';
import 'package:tovuti_halmashauri/screens/about/about.dart';
import 'package:tovuti_halmashauri/screens/about/contact.dart';
import 'package:tovuti_halmashauri/screens/dashboard/dashboard.dart';

class SharedPopup extends StatefulWidget{
  SharedPopupState createState() => SharedPopupState();
}
class SharedPopupState extends State<SharedPopup>{
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
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
    );
  }

  void choiceAction(String choice) {
      switch(choice){
        case Constants.About:
          Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutScreen()));
          break;
        case Constants.Home:
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
          break;
        case Constants.Contact:
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactScreen()));
          break;
      }
    }
  
}