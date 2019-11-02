import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/constant.dart';

class Plank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
           Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage('https://seven.app/media/images/Plank.gif'),
                  ),
                  SizedBox(height: 2,),
                  Text('Basic plank',style: TextStyle(fontSize: 20.0,fontFamily: 'ic'),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage('https://seven.app/media/images/Commando-Plank.gif'),
                  ),
                  SizedBox(height: 2,),
                  Text('Commando plank',style: TextStyle(fontSize: 20.0,fontFamily: 'ic'),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage('https://seven.app/media/images/Buzzsaw-plank.gif'),
                  ),
                  SizedBox(height: 2,),
                  Text('Buzzsaw Plank',style: TextStyle(fontSize: 20.0,fontFamily: 'ic'),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage('https://seven.app/media/images/Plank-Jacks.gif'),
                  ),
                  SizedBox(height: 2,),
                  Text('Plank Jacks',style: TextStyle(fontSize: 20.0,fontFamily: 'ic'),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage('https://seven.app/media/images/Side-Plank.gif'),
                  ),
                  SizedBox(height: 2,),
                  Text('Side plank',style: TextStyle(fontSize: 20.0,fontFamily: 'ic'),)
                ],
              ),
            ),
        ],
      ),
      
    );
  }
}