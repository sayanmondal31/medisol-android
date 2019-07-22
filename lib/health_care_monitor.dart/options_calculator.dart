import 'package:flutter/material.dart';
import 'package:medisol/firstpage/button_tab.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/input_page.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/decide_page.dart';

class ClaculatorTabs extends StatefulWidget {
  @override
  _ClaculatorTabsState createState() => _ClaculatorTabsState();
}

class _ClaculatorTabsState extends State<ClaculatorTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ButtonTabs(
              text: 'BMI Calculator',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BmiCalPage())),
            ),
            SizedBox(
              width: 20,
            ),
            ButtonTabs(
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DecidePage())),
              text: 'BMR Calcualtor',
            ),
            SizedBox(
              width: 20.0,
            ),
            ButtonTabs(
              text: 'Calorie Calculator',
            ),
            SizedBox(
              width: 20,
            ),
            ButtonTabs(
              text: 'Fat Calculator',
            )
          ],
        ),
      ),
    );
  }
}
