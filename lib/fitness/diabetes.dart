import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/constant.dart';

class Diabetes extends StatelessWidget {
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
                      'http://personaltrainer.ebhasin.com/upload/Ardha-Matsyendrasana.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Half spinal Twist',
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
                      'https://i.pinimg.com/originals/f6/cd/15/f6cd1583aff8a9cf22825c86109a007b.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Chakrasan',
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
