import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class WebMap extends StatefulWidget {
  WebMap({Key key}) : super(key: key);

  _WebMapState createState() => _WebMapState();
}

class _WebMapState extends State<WebMap> {
  @override
  Widget build(BuildContext context) {
     return WebviewScaffold(
      appBar: AppBar(
        title: Text('Hospital near me'),
      ),
      
      url: "https://www.google.co.in/maps/search/hospital+near+me",
      // withZoom: true,
    );
  }
}