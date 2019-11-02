import 'package:flutter/material.dart';
import 'package:medisol/drawerbox.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';
import 'package:medisol/firstpage/button_tab.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/input_page.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/decide_page.dart';
import 'package:medisol/health_care_monitor.dart/calorie_calculator/men/brain.dart';
import 'package:medisol/health_care_monitor.dart/calorie_calculator/men/men_input.dart';

class ClaculatorTabs extends StatefulWidget {
  @override
  _ClaculatorTabsState createState() => _ClaculatorTabsState();
}

class _ClaculatorTabsState extends State<ClaculatorTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerBox(),
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap:()=>Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios)),
            SizedBox(width: 90,),
            Text("Calculators"),
          ],
        ),
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
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CalorieCalPageMetric()));
              },
              iconData: Icons.camera_roll,
            ),
            SizedBox(
              width: 20,
            ),
            // FirstaidComponents(
            //   problemText: 'Fat Calculator',
            //   press: (){},
            //   iconData: Icons.camera_roll,
            // )
          ],
        ),
      ),
    );
  }
}


