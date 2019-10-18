import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medisol/first_aid/burn.dart';
import 'package:medisol/first_aid/cuts.dart';
import 'package:medisol/first_aid/first_aid_page/firstAid_page.dart';
import 'package:medisol/first_aid/fracture.dart';


import 'package:medisol/firstpage/page.dart';

import 'package:medisol/login/login_page.dart';
import 'package:medisol/login/register_page.dart';
import 'package:medisol/login/signIn.dart';

import 'package:medisol/login/welcome.dart';
import 'package:medisol/symptoms/eyes.dart';
import 'package:medisol/symptoms/fever.dart';
import 'package:medisol/symptoms/stomach_problem.dart';
import 'package:medisol/symptoms/symptom_page/symptom_page.dart';

void main() => runApp(MediSol());

class MediSol extends StatelessWidget {
  // bool darkThemeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: LoginScreen.id,
      routes: {
        MediPage.id: (context) => MediPage(),
        FirstaidPage.id: (context) => FirstaidPage(),
        BurnPage.id: (context) => BurnPage(),
        CutsPage.id: (context) => CutsPage(),
        FracturePage.id: (context) => FracturePage(),
        LoginScreen.id: (context) =>LoginScreen(),
        SymptomsPage.id: (context) => SymptomsPage(),
        EyesPage.id: (context) => EyesPage(),
        FeverPage.id: (context) => FeverPage(),
        StomachPage.id: (context) => StomachPage(),
        // LoginPage.id: (context) => LoginPage(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegisterPage.id: (context) => RegisterPage(),
        // GoogleSignInpage.id: (context) => GoogleSignInpage(),
      },
    );
  }
}
