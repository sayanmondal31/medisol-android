import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class SymptomsPage extends StatefulWidget {
  static const String id = 'symptom';
  SymptomsPage({Key key}) : super(key: key);

  _SymptomsPageState createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
  @override
  Widget build(BuildContext context) {
     return WebviewScaffold(
      
      
      url: "https://bot.dialogflow.com/f16368dd-b6d0-4104-b348-b9de29bf4793",
      // withZoom: true,
    );
  }
}