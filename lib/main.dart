import 'package:flutter/material.dart';
import 'package:medisol/first_aid/burn.dart';
import 'package:medisol/first_aid/cuts.dart';
import 'package:medisol/first_aid/first_aid_page/firstAid_page.dart';
import 'package:medisol/first_aid/stroke.dart';
import 'package:medisol/first_aid/tear_off.dart';
import 'package:medisol/firstpage/page.dart';


void main()=>runApp(MediSol());

class MediSol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MediPage(),
      
      routes: {
        '/homepage':(context)=>MediPage(),
        '/firstaid':(context)=>FirstaidPage(),
        '/firstaidburn':(context)=>BurnPage(),
        '/firstaidcuts':(context)=>CutsPage(),
        '/firstaidstroke':(context)=>StrokePage(),
        '/firstaidtear':(context)=>TearOff(),
      },
    );
  }
}