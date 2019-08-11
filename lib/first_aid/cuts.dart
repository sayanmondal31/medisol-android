import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:image/image.dart';

class CutsPage extends StatelessWidget {
  static const String id = 'cutspage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cuts'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 10.0,
              child: prefix0.Image(
                image: AssetImage('images/skincut.gif'),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
