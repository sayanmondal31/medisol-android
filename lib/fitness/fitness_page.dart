import 'package:flutter/material.dart';
import 'package:medisol/donor/button2donor.dart';
import 'package:medisol/firstpage/ButtonUi.dart';
import 'package:medisol/firstpage/page.dart';
import 'package:medisol/fitness/disease/disease_button.dart';
import 'package:medisol/fitness/fitness_button.dart';
import 'package:medisol/fitness/weight%20loose/plank.dart';
import 'package:medisol/fitness/yoga/yoga_page.dart';

class FitnessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xFF7f84be),
      appBar: AppBar(
        title: Center(child: Text('Fitness')),
        backgroundColor: Color(0xFF7f84be),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Image.asset('images/fitness/yoga_front.gif'),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                FitnessButton(
                  text: 'Disease',
                  iconColor: Colors.teal,
                  iconData: Icons.ac_unit,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Disease()));
                  },
                ),
               
               
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                FitnessButton(
                  text: 'Weight Loose',
                  iconColor: Colors.teal,
                  iconData: Icons.ac_unit,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Plank()));
                  },
                ),
                
                // FitnessButton(
                //   text: 'Stress',
                //   iconColor: Colors.teal,
                //   iconData: Icons.ac_unit,
                //   press: () {},
                // ),
              ],
            ),
            Row(
              children: <Widget>[
                FitnessButton(
                  text: 'Y o g a',
                  iconColor: Colors.teal,
                  iconData: Icons.ac_unit,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => YogaPage()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
