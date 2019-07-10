import 'package:flutter/material.dart';
import 'package:medisol/first_aid/burn.dart';
import 'package:medisol/first_aid/cuts.dart';
import 'package:medisol/first_aid/first_aid_page/firstAid_page.dart';
import 'package:medisol/first_aid/stroke.dart';
import 'package:medisol/first_aid/tear_off.dart';
import 'package:medisol/firstpage/page.dart';
import 'package:medisol/symptoms/eyes.dart';
import 'package:medisol/symptoms/fever.dart';
import 'package:medisol/symptoms/stomach_problem.dart';
import 'package:medisol/symptoms/symptom_page/symptom_page.dart';


void main()=>runApp(MediSol());

class MediSol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MediPage(),
      initialRoute: MediPage.id,
      routes: {
        MediPage.id:(context)=>MediPage(),
        FirstaidPage.id:(context)=>FirstaidPage(),
        BurnPage.id:(context)=>BurnPage(),
        CutsPage.id:(context)=>CutsPage(),
        StrokePage.id:(context)=>StrokePage(),
        TearOff.id:(context)=>TearOff(),
        SymptomsPage.id:(context)=>SymptomsPage(),
        EyesPage.id:(context)=>EyesPage(),
        FeverPage.id:(context)=>FeverPage(),
        StomachPage.id:(context)=>StomachPage()
      },
    );
  }
}