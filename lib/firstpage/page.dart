import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/first_aid/first_aid_page/firstAid_page.dart';
import 'package:medisol/firstpage/iconCards.dart';
import 'package:medisol/symptoms/symptom_page/symptom_page.dart';

class MediPage extends StatelessWidget {
  static const String id = 'medihomepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        
        child: SafeArea(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text('how to use'),
            )
          ],
        )),
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        
        title: Center(
          child: Text('MediSol'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/waterdrop.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  IconCards(
                    cardtext: 'First aid',
                    cardicon: FontAwesomeIcons.firstAid,
                    press: () {
                      Navigator.pushNamed(context, FirstaidPage.id);
                    },
                  ),
                  IconCards(
                    cardtext: 'Symtoms',
                    cardicon: FontAwesomeIcons.solidHeart,
                    press: (){
                      Navigator.pushNamed(context, SymptomsPage.id);
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  IconCards(
                    cardtext: 'Deep Scan',
                    cardicon: FontAwesomeIcons.xRay,
                  ),
                  IconCards(
                    cardtext: 'Medicin Reminder',
                    cardicon: FontAwesomeIcons.tablets,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  IconCards(
                    cardtext: 'Health Care Monitor ',
                    cardicon: FontAwesomeIcons.heartbeat,
                    // press: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                    // },
                  ),
                  IconCards(
                    cardtext: 'metarnal',
                    cardicon: FontAwesomeIcons.userNurse,
                  ),
                ],
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
