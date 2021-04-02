import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl ;

  const ArticleView({ this.blogUrl});
  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
final Completer<WebViewController> _completer = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Opacity(
            opacity: 0,
            child: Container(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.save,)),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            Text('App', style: TextStyle(color: Colors.greenAccent[200]))
          ],
        ),
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.blogUrl,
          onWebViewCreated: ((WebViewController webViewController ){
            _completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
