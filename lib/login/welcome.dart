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
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                Text(
                  "We care your",
                  style: TextStyle(fontSize: 43.0),
                ),
                SizedBox(width: 5.0, height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: RotateAnimatedTextKit(
                      text: ["health", "family", "friends"],
                      textStyle: TextStyle(
                        fontSize: 40.0,
                      ),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            GotoButton(
              text: 'Login',
              colors: Colors.blue[200],
              onPress: () {
                CircularProgressIndicator(backgroundColor: Colors.green,);
                Navigator.pushNamed(context, Loginpage.id);
                
              },
            ),
            GotoButton(
              text: 'registration',
              colors: Colors.purple,
              onPress: () {
                CircularProgressIndicator(backgroundColor: Colors.green,);
                Navigator.pushNamed(context, RegisterPage.id);
                
              },
            )
          ],
        ),
      ),
    );
  }
}
