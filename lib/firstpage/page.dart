import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/deepscan.dart/medi_web.dart';
import 'package:medisol/drawerbox.dart';
import 'package:medisol/emergency/map.dart';
import 'package:medisol/emergency/map_buttons.dart';
import 'package:medisol/first_aid/first_aid_page/firstAid_page.dart';
import 'package:medisol/firstpage/ButtonUi.dart';
import 'package:medisol/firstpage/camera.dart';
import 'package:medisol/firstpage/userinfo.dart' as prefix0;
import 'package:medisol/fitness/fitness_button.dart';
import 'package:medisol/fitness/fitness_page.dart';
import 'package:medisol/health_care_monitor.dart/options_calculator.dart';
import 'package:medisol/login/auth.dart';
import 'package:medisol/login/signIn.dart' as prefix1;
import 'package:medisol/medicine_reminder/medrempage.dart';
import 'package:medisol/medicine_reminder/src/global_bloc.dart';
import 'package:medisol/medicine_reminder/src/ui/homepage/homepage.dart';
import 'package:medisol/symptoms/symptom_page/symptom_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

final _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
final _firestore = Firestore.instance;
FirebaseUser existingUser;

class MediPage extends StatefulWidget {
  MediPage({this.auth, this.onSignOut});
  final Auth auth;
  final VoidCallback onSignOut;
  static const String id = 'medihomepage';
  bool darkThemeEnabled;
  void _signout(BuildContext context) {
    try {
      auth.signOut();
      onSignOut();
    } catch (e) {
      throw 'error';
    }
  }

  @override
  _MediPageState createState() => _MediPageState();
}

class _MediPageState extends State<MediPage> {
  String name;

  bool _visible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    final user = await _auth.currentUser();
    if (user != null) {
      existingUser = user;
    }
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  // String currentUser = existingUser.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: DrawerBox(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Center(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Center(child: Text('MediSol')),
              ),
              SizedBox(
                width: 30.0,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                ButtonUi(
                  text: 'First aid',
                  iconColor: Colors.red[600],
                  press: () {
                    Navigator.pushNamed(context, FirstaidPage.id);
                  },
                  iconData: FontAwesomeIcons.firstAid,
                ),
                SizedBox(
                  width: 10.0,
                ),
                ButtonUi(
                  text: 'Symptoms',
                  iconColor: Colors.red[300],
                  press: () => Navigator.pushNamed(
                    context,
                    SymptomsPage.id,
                  ),
                  iconData: FontAwesomeIcons.heartbeat,
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                ButtonUi(
                  text: 'Deep Scan',
                  iconColor: Colors.brown[400],
                  iconData: FontAwesomeIcons.xRay,
                  press: () {
                   _launchURL();
                  },
                ),
                SizedBox(
                  width: 10.0,
                ),
                ButtonUi(
                  text: 'Medicine Reminder',
                  iconColor: Colors.green,
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MedicineReminder()),
                  ),
                  iconData: FontAwesomeIcons.pills,
                )
              ],
            ),
            Row(
              children: <Widget>[
                ButtonUi(
                  text: 'Health care Monitor',
                  iconColor: Colors.green[600],
                  iconData: FontAwesomeIcons.heartbeat,
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClaculatorTabs()),
                  ),
                ),
                ButtonUi(
                  text: 'Fitness',
                  iconColor: Colors.blue,
                  iconData: FontAwesomeIcons.userNurse,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FitnessPage()));
                  },
                )
              ],
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                animationDuration: Duration(seconds: 2),
                splashColor: Colors.red,
                color: Colors.red,
                onPressed: () async {
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapButtton()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Opacity(
                    opacity: 0.8,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Emergency',
                        style: TextStyle(fontSize: 30),
                      ),
                    )),
                  ),
                ),
              ),
            )
      
          ],
        ),
        
      ),
    );
  }
}



// void signOutGoogle() async {
//   await googleSignIn.signOut();

//   print("User Sign Out");
// }

_launchURL() async {
  const url = 'http://35.193.225.166/checkup.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
