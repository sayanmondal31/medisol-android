import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class WebMapDonor extends StatefulWidget {
  WebMapDonor({Key key}) : super(key: key);

  _WebMapDonorState createState() => _WebMapDonorState();
}

class _WebMapDonorState extends State<WebMapDonor> {
  @override
  Widget build(BuildContext context) {
     return WebviewScaffold(
      appBar: AppBar(
        title: Text('Donor near me'),
      ),
      
      url: "https://www.google.co.in/maps/search/donor+near+me",
      // withZoom: true,
    );
  }
}