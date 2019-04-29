import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tovuti_halmashauri/constants/contents.dart';
import 'package:tovuti_halmashauri/constants/popup.dart';
import 'package:tovuti_halmashauri/screens/about/about.dart';
import 'package:tovuti_halmashauri/screens/dashboard/dashboard.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';


class WebExplorer extends StatefulWidget {
  @override
  _ExplorerState createState() => _ExplorerState();
}

class _ExplorerState extends State<WebExplorer> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('OR-TAMISEMI'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share, color: Colors.white,),
            onPressed: (){
              Share.share(Contents.Share);
            },
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
      ),
      body: WebView(
        initialUrl: 'http://www.tamisemi.go.tz',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: _bookmarkButton(),
    );
  }

  _bookmarkButton() {
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (controller.hasData) {
          return FloatingActionButton(
            onPressed: () async {
              var url = await controller.data.currentUrl();
              _favorites.add(url);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Saved $url for later reading.')),
              );
            },
            child: Icon(Icons.favorite),
          );
        }
        return Container();
      },
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
