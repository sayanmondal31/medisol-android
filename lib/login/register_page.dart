import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medisol/firstpage/page.dart';
import 'package:medisol/login/goto_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../constants.dart';

class RegisterPage extends StatefulWidget {
  static const String id = 'register';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _auth = FirebaseAuth.instance;
  final _store = Firestore.instance;
  bool showSpinner = false;
  String email;
  String password;
  String fname;
  String lname;
  String age;
  String height;
  String weight;
  String blood;
  String firstname;
  String lastname;
  String userage;
  String userheight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  fname = value;
                },
                decoration: kDecorationbox.copyWith(hintText: 'first name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  lname = value;
                },
                decoration: kDecorationbox.copyWith(hintText: 'last name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  age = value;
                },
                decoration: kDecorationbox.copyWith(hintText: 'age'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  height = value;
                },
                decoration: kDecorationbox.copyWith(hintText: 'height'),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    //Do something with the user input.
                    email = value;
                  },
                  decoration: kDecorationbox.copyWith(hintText: 'enter email')),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                  obscureText: true,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  decoration:
                      kDecorationbox.copyWith(hintText: 'enter password')),
              SizedBox(
                height: 24.0,
              ),
              GotoButton(
                text: 'Register',
                onPress: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final existingUser =
                        await _auth.createUserWithEmailAndPassword(
                            email: email, password: password);
                    
                    await _store.collection('userdetails').add({
                      'firstname': fname,
                      'lastname': lname,
                      'userage': age,
                      'userheight': height,
                    });
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
