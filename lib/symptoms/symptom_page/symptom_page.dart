import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';
import 'package:medisol/symptoms/eyes.dart';
import 'package:medisol/symptoms/fever.dart';
import 'package:medisol/symptoms/stomach_problem.dart';

class SymptomsPage extends StatelessWidget {
  static const String id = 'symptoms';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100] ,
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey,
        title: Text('Symptoms'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          FirstaidComponents(
            problemText: 'Eye Problem',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EyesPage())),
            iconData: FontAwesomeIcons.eye,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Fever',
            iconData: FontAwesomeIcons.thermometerQuarter,
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FeverPage()))
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Stomach problem',
            press:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>StomachPage() )),
            iconData: FontAwesomeIcons.sadCry,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
