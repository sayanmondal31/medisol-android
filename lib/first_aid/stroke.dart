import 'package:flutter/material.dart';

class StrokePage extends StatelessWidget {
  static const String id = 'strokepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stroke'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 10.0,
              child: Image.network('')
            )
          ],
        ),
      ),
    );
  }
}
