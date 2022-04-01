import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/BuildWidgetsImports.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  final String blogTitle;

  const ArticleView({this.blogUrl, this.blogTitle = ''});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  int loadingText;
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: BuildAppNameText(title: widget.blogTitle??''),
        leading: BuildBackBtn(),
      ),
      body: Container(
        child: Stack(
          children: [
            WebView(
              initialUrl: widget.blogUrl,
              onWebViewCreated: ((WebViewController webViewController) {
                _completer.complete(webViewController);
              }),
              onProgress: (progress) {
                setState(() => loadingText = progress);
                print('>>>>> Loading $progress %');
              },
            ),
            BuildCustomLoading(loadingText: loadingText)
          ],
        ),
      ),
    );
  }
}
