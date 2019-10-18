import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medisol/feedback.dart';
import 'package:medisol/firstpage/page.dart' as prefix0;
import 'package:medisol/login/login_page.dart';
import 'package:medisol/login/signIn.dart';
import 'package:medisol/userDetail.dart';

class DrawerBox extends StatefulWidget {
  

  @override
  _DrawerBoxState createState() => _DrawerBoxState();
}

class _DrawerBoxState extends State<DrawerBox> {
   final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    user = await _auth.currentUser();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(""),
            accountEmail: new Text('${user?.email}',style: TextStyle(fontSize: 20.0,fontFamily: 'ic'),),
            currentAccountPicture: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
              child: new CircleAvatar(
                backgroundColor: Colors.cyan,
                child: new Text(""),
              ),
            ),
          ),
          //      new ListTile(
          //    title: new Text("home"),
          //    trailing: new Icon(Icons.home),
          //    onTap: (){
          //      Navigator.of(context).pop();
          //      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NewPage("home")));
          //    },
          //  ),

          new ListTile(
            title: new Text("Demo"),
            trailing: new Icon(Icons.account_balance_wallet),
            onTap: () {
              Navigator.of(context).pop();
              //  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new BalancePage("balance")));
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text("Notification"),
            trailing: new Icon(Icons.notifications),
            onTap: () {
              Navigator.of(context).pop();
              //  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NotificationPage("notification")));
            },
          ),
        
          new ListTile(
            title: new Text("Feedback"),
            trailing: new Icon(Icons.feedback),
            onTap: () {
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackForm()));
            },
          ),

          
          new ListTile(
              title: new Text("Log out "),
              trailing: new Icon(Icons.close),
              onTap: () {
                
                
              }),
        ],
      ),
    );
  }
}
