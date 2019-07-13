import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/deepscan.dart/medi_web.dart';
import 'package:medisol/first_aid/first_aid_page/firstAid_page.dart';
import 'package:medisol/firstpage/ButtonUi.dart';
import 'package:medisol/symptoms/symptom_page/symptom_page.dart';

class MediPage extends StatelessWidget {
  static const String id = 'medihomepage';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("sayan mondal"),
              accountEmail: new Text('email'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.cyan,
                child: new Text("s"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: new Text("s"),
                )
              ],
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
              title: new Text("demo"),
              trailing: new Icon(Icons.account_balance_wallet),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new BalancePage("balance")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("notification"),
              trailing: new Icon(Icons.notifications),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NotificationPage("notification")));
              },
            ),

            new Divider(),
            new ListTile(
                title: new Text("log out "),
                trailing: new Icon(Icons.close),
                onLongPress: () {
                  FirebaseAuth.instance
                      .signOut()
                      .then((value) {})
                      .catchError((e) {
                    print(e);
                  });
                }),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Center(
          child: Text('MediSol'),
        ),
      ),
      body:  Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ButtonUi(
                        text: 'First aid',
                        press: () {
                          Navigator.pushNamed(context, FirstaidPage.id);
                        },
                        iconData: FontAwesomeIcons.firstAid,
                      ),
                      ButtonUi(
                        text: 'Symptoms',
                        press: () => Navigator.pushNamed(
                          context,
                          SymptomsPage.id,
                        ),
                        iconData: FontAwesomeIcons.heartbeat,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      ButtonUi(
                        text: 'Deep Scan',
                        iconData: FontAwesomeIcons.xRay,
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeepScan())),
                      ),
                      ButtonUi(
                        text: 'Medicin reminder',
                        press: () {},
                        iconData: FontAwesomeIcons.pills,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      ButtonUi(
                        text: 'Health care Monitor',
                        iconData: FontAwesomeIcons.heartbeat,
                        press: () {},
                      ),
                      ButtonUi(
                        text: 'Metarnal',
                        iconData: FontAwesomeIcons.userNurse,
                        press: () {},
                      )
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.8,
                child: Card(
                  elevation: 5,
                  color: Colors.red[200],
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Center(
                      child: Text(
                    'Emergency',
                    style: TextStyle(fontSize: 50),
                  )),
                ),
              )
            ],
          ),
        ),
      
    );
  }
}
