import 'package:flutter/material.dart';
import 'package:medisol/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medisol/deepscan.dart/medi_web.dart';
import 'package:medisol/firstpage/page.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';

class Loginpage extends StatefulWidget {
  static const String id = 'loginpage';
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>
    with SingleTickerProviderStateMixin {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn =new GoogleSignIn();

  Future<String> _userSignInWithGoogle() async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();//showing exception
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser user = await _auth.signInWithCredential(credential);
    assert(user.email != null);
    assert(user.displayName != null);
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);

    return 'signInWithGoogle succeeded: $user';
  }

  String email;
  String password;
  bool spinner = false;

  AnimationController _iconanimationController;
  Animation<double> _iconanimation;

  @override
  void initState() {
    super.initState();
    _iconanimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _iconanimation = new CurvedAnimation(
        parent: _iconanimationController, curve: Curves.easeInOut);
    _iconanimation.addListener(() => this.setState(() {}));
    _iconanimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: ModalProgressHUD(
        inAsyncCall: spinner,
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("images/loginpagedna.gif"),
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: RaisedButton(onPressed:(){
                    final googleUserauth = _userSignInWithGoogle();
                  if(googleUserauth!=null)
                  {
                    CircularProgressIndicator();
                    Navigator.pushNamed(context, MediPage.id);
                  }
                  }),
                ),

                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                new Form(
                  child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                            color: Colors.tealAccent, fontSize: 20.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            onSaved: (value) {
                              email = value;
                            },
                            decoration: kDecorationbox.copyWith(
                              hintText: 'enter email',
                              hintStyle: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          new TextFormField(
                            onSaved: (value) {
                              password = value;
                            },
                            decoration: kDecorationbox.copyWith(
                              hintText: 'enter password',
                              hintStyle: TextStyle(color: Colors.greenAccent),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                          new MaterialButton(
                            color: Colors.teal,
                            child: new Text(
                              "LOGIN",
                              style: new TextStyle(color: Colors.purple),
                            ),
                            onPressed: () {
                              setState(() {
                                spinner = true;
                              });
                              try {
                                final existingUser =
                                    _auth.signInWithEmailAndPassword(
                                        email: email, password: password);
                                if (existingUser != null) {
                                  CircularProgressIndicator();
                                  Navigator.pushNamed(context, MediPage.id);
                                }
                                setState(() {
                                  spinner = false;
                                });
                              } catch (e) {
                                print(e);
                              }
                            },
                            splashColor: Colors.greenAccent,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
