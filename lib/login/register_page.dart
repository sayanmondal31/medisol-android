import 'package:flutter/material.dart';
import 'package:medisol/constants.dart';
import 'package:medisol/login/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  static const String id = 'register';
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with SingleTickerProviderStateMixin {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
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
      body: new Stack(
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
            children: <Widget>[
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
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: kDecorationbox.copyWith(
                              hintText: 'enter email',
                              hintStyle: TextStyle(color: Colors.greenAccent),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        new TextFormField(
                          onChanged: (value) {
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
                            "REGISTER",
                            style: new TextStyle(color: Colors.purpleAccent),
                          ),
                          onPressed: () async {
                            final newUser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            if (newUser != null) {
                              Navigator.pushNamed(context, Loginpage.id);
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
    );
  }
}
