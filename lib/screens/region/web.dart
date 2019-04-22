import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:share/share.dart';

import 'package:tovuti_halmashauri/models/district_model.dart';

class WebViewScreen extends StatefulWidget {
  final District district;
  WebViewScreen({Key key, @required this.district}) : super(key: key);
  @override
  WebViewScreenState createState() => new WebViewScreenState(district);
}

class WebViewScreenState extends State<WebViewScreen> {

  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();

  District  district;
  WebViewScreenState(this.district);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF35c680),
        centerTitle: true,
        title: Text(district.district),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            color: Colors.white,
            onPressed: (){
              Share.share(district.web);
            },
          )
        ],
      ),
      body: WebView(
        javaScriptMode: JavaScriptMode.unrestricted,
        initialUrl: district.web,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
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
            backgroundColor: Colors.blue,
            onPressed: () async {
              var url = await controller.data.currentUrl();
              _favorites.add(url);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Saved $url for later reading.')),
              );
            },
            child: Icon(Icons.mail_outline, color: Colors.white,),
          );
        }
        return Container();
      },
    );
  }
}