import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/drawerbox.dart';
import 'package:medisol/emergency/map.dart';
import 'package:medisol/emergency/web_ambulance.dart';
import 'package:medisol/emergency/webview_map.dart';
import 'package:medisol/emergency/webview_map_donor.dart';
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
                    MaterialPageRoute(builder: (context) => WebMap()));
              },
              iconData: FontAwesomeIcons.hospitalAlt,
              problemText: "Hospital",
            ),
            SizedBox(
              height: 20,
            ),
            FirstaidComponents(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebMapAmbulance()));
              },
              problemText: "Ambulance",
              iconData: FontAwesomeIcons.ambulance,
            ),
            SizedBox(
              height: 20.0,
            ),
            FirstaidComponents(
              press: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebMapDonor()));
              },
              iconData: FontAwesomeIcons.hands,
              problemText: "Donor",
            )
          ],
        ),
      ),
    );
  }
}
