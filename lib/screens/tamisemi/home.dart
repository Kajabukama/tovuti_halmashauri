import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tovuti_halmashauri/screens/about/about.dart';
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
              Share.share('Fikia Tovuti za Halmashauri mbalimbali Tanzania kiganjani mwako, pakua App ya Tovuti za Mikoa na Halmashauri za Tanzania sasa \n https://play.google.com/store/apps/details?id=com.boldtz.tovutizamikoa');
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => new AboutScreen())
              );
            },
          )
        ],
      ),
      body: WebView(
        javaScriptMode: JavaScriptMode.unrestricted,
        initialUrl: 'http://tamisemi.go.tz',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.isCompleted ? _controller.complete(webViewController) : CircularProgressIndicator();
        },
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
}