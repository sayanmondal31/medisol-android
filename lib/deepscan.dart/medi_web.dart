import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class DeepScan extends StatefulWidget {
  static const String id = 'deepscan';
  @override
  _DeepScanState createState() => _DeepScanState();
}

class _DeepScanState extends State<DeepScan> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('deep scan'),),
       body: WebviewScaffold(
         url: 'https://suvhradipghosh07.github.io/medisol-web/',
         
         
       ),
    );
  }
}











