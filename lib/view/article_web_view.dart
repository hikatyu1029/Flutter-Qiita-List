import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/article.dart';

class ArticleWebView extends StatelessWidget {
  final Article article;

  const ArticleWebView({required this.article});

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
