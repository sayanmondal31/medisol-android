import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/drawerbox.dart';
import 'package:medisol/emergency/map.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';
import 'package:medisol/firstpage/ButtonUi.dart';
import 'package:medisol/firstpage/button_tab.dart';

class MapButtton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBox(),
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: ()=>Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios)),
            SizedBox(width: 90.0,),
            Text("Emergency"),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FirstaidComponents(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EmergencyMap()));
              },
              iconData: FontAwesomeIcons.hospitalAlt,
              problemText: "Hospital Near Me",
            ),
            SizedBox(
              height: 20,
            ),
            FirstaidComponents(
              press: () {},
              problemText: "Ambulance Near Me",
              iconData: FontAwesomeIcons.ambulance,
            ),
            SizedBox(
              height: 20.0,
            ),
            FirstaidComponents(
              press: (){},
              iconData: FontAwesomeIcons.hands,
              problemText: "Donor Near Me",
            )
          ],
        ),
      ),
    );
  }
}
