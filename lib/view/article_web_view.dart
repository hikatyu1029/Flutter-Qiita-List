import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/article.dart';

class ArticleWebView extends StatelessWidget {
  final Article article;

  const ArticleWebView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: WebView(
            initialUrl: article.url,
          ),
        ),
      ),
    );
  }
}
