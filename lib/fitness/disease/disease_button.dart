import 'package:flutter/material.dart';
import 'package:medisol/fitness/disease/arthritis.dart';
import 'package:medisol/fitness/disease/backpain.dart';
import 'package:medisol/fitness/disease/diabetes.dart';
import 'package:medisol/fitness/disease/migrane.dart';
import 'package:medisol/fitness/disease/thyroidtreatment.dart';

import 'package:medisol/fitness/fitness_button.dart';

class Disease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7f84be),
      appBar: AppBar(
        backgroundColor: Color(0xFF7f84be),
        title: Center(child: Text('Disease')),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              FitnessButton(
                text: 'Arthritis',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Arthritis()));
                },
                iconColor: Colors.cyan,
                iconData: Icons.ac_unit,
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              FitnessButton(
                text: 'Backpain',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BackPain()));
                },
                iconColor: Colors.cyan,
                iconData: Icons.ac_unit,
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              FitnessButton(
                text: 'Diabetes',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Diabetes()));
                },
                iconColor: Colors.cyan,
                iconData: Icons.ac_unit,
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              FitnessButton(
                text: 'Migrane',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Migrane()));
                },
                iconColor: Colors.cyan,
                iconData: Icons.ac_unit,
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              FitnessButton(
                text: 'Thyroid',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Thyroid()));
                },
                iconColor: Colors.cyan,
                iconData: Icons.ac_unit,
              ),
            ],
          )
        ],
      )
      
    );
  }
}