import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class WebMapAmbulance extends StatefulWidget {
  WebMapAmbulance({Key key}) : super(key: key);

  _WebMapAmbulanceState createState() => _WebMapAmbulanceState();
}

class _WebMapAmbulanceState extends State<WebMapAmbulance> {
  @override
  Widget build(BuildContext context) {
     return WebviewScaffold(
      appBar: AppBar(
        title: Text('Ambulance near me'),
      ),
      
      url: "https://www.google.co.in/maps/search/ambulance+near+me",
      // withZoom: true,
    );
  }
}