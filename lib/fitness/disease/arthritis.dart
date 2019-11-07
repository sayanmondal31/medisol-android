 
import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/constant.dart';

class Arthritis extends StatelessWidget {
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
                      'https://eyogaguru.com/wp-content/uploads/2013/07/balasana-catpose.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Child Pose/ Shishuasana',
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
                      'https://guitarismyyoga.net/wp-content/uploads/2019/04/GIF-Yoga-How-To-Pose-1-Downward-Dog-v4.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Facing Dog pose',
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