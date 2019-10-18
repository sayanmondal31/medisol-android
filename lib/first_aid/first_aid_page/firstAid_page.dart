import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/drawerbox.dart';
import 'package:medisol/first_aid/burn.dart';
import 'package:medisol/first_aid/cuts.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';
import 'package:medisol/first_aid/fracture.dart';
import 'package:medisol/first_aid/nose_bleeding.dart';
import 'package:medisol/first_aid/sprains.dart';
import 'package:medisol/first_aid/sunburns.dart';



class FirstaidPage extends StatelessWidget {
  static const String id = 'firstaidpage';
  final List<String> entries = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBox(),
      // backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey,
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: ()=>Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios)),
            SizedBox(width: 90,),
            Center(child: Text('First aid ')),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          FirstaidComponents(
            problemText: 'burn',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BurnPage())),
            iconData: FontAwesomeIcons.burn,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'cuts',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CutsPage())),
            iconData: FontAwesomeIcons.cut,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Fractures',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FracturePage())),
            iconData: FontAwesomeIcons.bone,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Nose bleeding',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>NoseBleeding())),
            iconData: FontAwesomeIcons.hospital,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Sprains',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SprainPage())),
            iconData: FontAwesomeIcons.hospital,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Sunbrun',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SunBurn())),
            iconData: FontAwesomeIcons.hospital,
          ),
          SizedBox(
            height: 10.0,
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
