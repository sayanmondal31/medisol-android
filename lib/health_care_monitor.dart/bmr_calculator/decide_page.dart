// import 'package:bmr_calculator/men/input_men.dart';
// import 'package:bmr_calculator/women/input_women.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/firstpage/ButtonUi.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/reusable_card.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/men/input_men.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/women/input_women.dart';

class DecidePage extends StatefulWidget {
  @override
  _DecidePageState createState() => _DecidePageState();
}

class _DecidePageState extends State<DecidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: <Widget>[
          SizedBox(height: 200.0,),
          Row(
            children: <Widget>[
              ButtonUi(
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MenInput()));
                },
                text: 'Men',
                iconColor: Colors.cyan,
                iconData: FontAwesomeIcons.male,
              ),
              SizedBox(width: 10.0),
              ButtonUi(
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WomenInput()));
                },
                text: 'Women',
                iconData: FontAwesomeIcons.female,
                iconColor: Colors.cyan,
              )
            ],
          )
        ],
      )
      
    );
  }
}



// onPressed: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => WomenInput())),

// onPressed: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => MenInput())),