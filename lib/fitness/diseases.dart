import 'package:flutter/material.dart';
import 'package:medisol/fitness/backpain.dart';
import 'package:medisol/fitness/diabetes.dart';
import 'package:medisol/fitness/migrane.dart';
import 'thyroidtreatment.dart';
import 'diabetes.dart';
import 'arthritis.dart';
import 'backpain.dart';
import 'migrane.dart';

class disease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text('Thyroid'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thyroid()));
              },
            ),
//            SizedBox(
//              width: 20.0,
//            ),
            RaisedButton(
              child: Text('Diabetes'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Diabetes()));
              },
            ),
//            SizedBox(
//              width: 20.0,
//            ),
            RaisedButton(
              child: Text('Arthritis'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Arthritis()));
              },
            ),
//            SizedBox(
//              width: 20.0,
//            ),
            RaisedButton(
              child: Text('Lower Back Pain'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BackPain()));
              },
            ),
//            SizedBox(
//              width: 20.0,
//            ),
            RaisedButton(
              child: Text('Migrane'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Migrane()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
