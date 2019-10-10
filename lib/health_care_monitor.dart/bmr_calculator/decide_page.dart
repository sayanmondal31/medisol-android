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
      body: SafeArea(
              child: Container(
          
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 300.0,horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ButtonUi(
                  text: 'Men',
                  iconColor: Colors.blue,
                  press: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenInput()));
                  },
                  iconData: FontAwesomeIcons.male,
                ),
                SizedBox(width: 10.0,),
                ButtonUi(
                  text: 'Women',
                  iconColor: Colors.blue,
                  press: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WomenInput()));
                  },
                  iconData: FontAwesomeIcons.female,
                ),
                  
                
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}



// onPressed: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => WomenInput())),

// onPressed: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => MenInput())),