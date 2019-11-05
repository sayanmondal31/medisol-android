import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/constant.dart';

class Migrane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      'http://personaltrainer.ebhasin.com/upload/Salamba-Sarvangasana.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Salamba Sirsasana/ Supported headstand',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'ic'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
