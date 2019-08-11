import 'package:flutter/material.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';
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
      appBar: AppBar(
        title: Text("Calculators"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            FirstaidComponents(
              problemText: 'BMI Calculator',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BmiCalPage())),
                  iconData: Icons.camera_roll,
            ),
            SizedBox(
              width: 20,
            ),
            FirstaidComponents(
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DecidePage())),
              problemText: 'BMR Calcualtor',
              iconData: Icons.camera_roll,
            ),
            SizedBox(
              width: 20.0,
            ),
            FirstaidComponents(
              problemText: 'Calorie Calculator',
              press: (){},
              iconData: Icons.camera_roll,
            ),
            SizedBox(
              width: 20,
            ),
            FirstaidComponents(
              problemText: 'Fat Calculator',
              press: (){},
              iconData: Icons.camera_roll,
            )
          ],
        ),
      ),
    );
  }
}
