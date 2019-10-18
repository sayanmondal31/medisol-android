import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medisol/firstpage/page.dart';
import 'package:medisol/login/auth.dart';
import 'package:medisol/login/goto_screen.dart';
import 'package:medisol/login/register_page.dart';
import 'package:medisol/login/style/theme.dart' as prefix0;
import 'package:modal_progress_hud/modal_progress_hud.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key,  this.auth, this.onSignIn}) : super(key: key);

  // final String title;
  final BaseAuth auth;
  final VoidCallback onSignIn;
  static const String id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(child: Text('medisol',style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 100.0,
                fontFamily: 'Angel',
                color: Colors.cyan,
                )
              ),),
              SizedBox(
                height: 48.0,
              ),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    //Do something with the user input.
                    email = value;
                  },
                  validator: (value)=>value.isEmpty?'Email can\'t be empty' :null,
                  decoration: kDecorationbox.copyWith(hintText: 'enter email')),
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                  obscureText: true,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  
                  validator: (value)=>value.isEmpty?'password can\'t be empty':null,
                  autocorrect: false,
                  decoration:
                      kDecorationbox.copyWith(hintText: 'enter password')),
              SizedBox(
                height: 24.0,
              ),
              GotoButton(
                text: 'Login',
                onPress: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final existingUser = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (existingUser != null) {
                      Navigator.pushNamed(context, MediPage.id);
                      setState(() {
                        showSpinner = false;
                      });
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                colors: Colors.blue[200],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'New here ? ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ic'
                    ),
                  ),
                  GotoButton(
                    text: 'Register',
                    colors: Colors.blueAccent,
                    onPress: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


