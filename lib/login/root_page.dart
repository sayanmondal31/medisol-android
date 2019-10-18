 
import 'package:flutter/material.dart';
import 'package:medisol/firstpage/page.dart';

import 'package:medisol/login/auth.dart';
import 'package:medisol/login/login_page.dart';


class RootPage extends StatefulWidget {
  RootPage({Key key, this.auth}) : super(key: key);
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus {
  notSignedIn,
  signedIn,
}

class _RootPageState extends State<RootPage> {

  AuthStatus authStatus = AuthStatus.notSignedIn;

  initState() {
    super.initState();
    widget.auth.currentUser().then((userId) {
      setState(() {
        authStatus = userId != null ? AuthStatus.signedIn : AuthStatus.notSignedIn;
      });
    });
  }

  void _updateAuthStatus(AuthStatus status) {
    setState(() {
      authStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return new LoginScreen(
          
          auth: widget.auth,
          onSignIn: () => _updateAuthStatus(AuthStatus.signedIn),
        );
      case AuthStatus.signedIn:
        return new MediPage(
          auth: widget.auth,
          onSignOut: () => _updateAuthStatus(AuthStatus.notSignedIn)
        );
    }
  }
}