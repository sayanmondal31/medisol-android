// import 'package:bmr_calculator/men/input_men.dart';
// import 'package:bmr_calculator/women/input_women.dart';
import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/men/input_men.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/women/input_women.dart';

class DecidePage extends StatefulWidget {
  @override
  _DecidePageState createState() => _DecidePageState();
}

class _DecidePageState extends State<DecidePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: RaisedButton(
                color: Colors.greenAccent,
                elevation: 10,
                highlightElevation: 20,
                hoverElevation: 30,
                padding: EdgeInsets.symmetric(horizontal: 80),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenInput())),
                child: Text('MEN'),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            color: Colors.pink[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: RaisedButton(
                color: Colors.pink[100],
                elevation: 10,
                highlightElevation: 20,
                hoverElevation: 30,
                padding: EdgeInsets.symmetric(horizontal: 80),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WomenInput())),
                child: Text('WOMEN'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
