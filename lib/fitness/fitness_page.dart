import 'package:flutter/material.dart';
import 'package:medisol/donor/button2donor.dart';
import 'package:medisol/firstpage/ButtonUi.dart';
import 'package:medisol/fitness/fitness_button.dart';
import 'package:medisol/fitness/weight%20loose/plank.dart';

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
            Image.network(
                'https://i.pinimg.com/originals/64/41/61/644161b5ce15397473f2c4a49620ee8f.gif'),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                FitnessButton(
                  text: 'Disease',
                  iconColor: Colors.teal,
                  iconData: Icons.ac_unit,
                  press: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                FitnessButton(
                  text: 'Body Fit',
                  iconColor: Colors.teal,
                  iconData: Icons.ac_unit,
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: 20.0,),
             Row(
              children: <Widget>[
                FitnessButton(
                  text: 'Weight Loose',
                  iconColor: Colors.teal,
                  iconData: Icons.ac_unit,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Plank()));
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FitnessButton(
                  text: 'Stress',
                  iconColor: Colors.teal,
                  iconData: Icons.ac_unit,
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
