import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/constant.dart';

class Thyroid extends StatelessWidget {
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
                      'https://cdn.dribbble.com/users/1528773/screenshots/4319454/1.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Halasana',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'ic'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/1528773/screenshots/4319454/1.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Fish Pose',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'ic'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
