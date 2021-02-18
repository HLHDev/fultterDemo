import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('网页'),
      ),
      body: WebView(
        initialUrl: 'https://flutterchina.club',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}