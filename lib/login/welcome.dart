import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:medisol/login/goto_screen.dart';
import 'package:medisol/login/login_page.dart';
import 'package:medisol/login/register_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
          backgroundColor: Colors.grey,
          body: Column(
              // fit: StackFit.expand,
              children: <Widget>[
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/blue-dna.gif'),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
          Container(
                  child: Column(
                    children: <Widget>[
          GotoButton(
            text: 'Login',
            colors: Colors.blue[200],
            onPress: () {
              CircularProgressIndicator(
                backgroundColor: Colors.green,
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen()));
            },
          ),
          GotoButton(
            text: 'registration',
            colors: Colors.purple,
            onPress: () {
              CircularProgressIndicator(
                backgroundColor: Colors.green,
              );
              Navigator.pushNamed(context, RegisterPage.id);
            },
          )
                    ],
                  ),
                ),
                    ],
                  ),
                ),
                
              ],
            )),
    );
  }
}
