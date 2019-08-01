import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/first_aid/burn.dart';
import 'package:medisol/first_aid/cuts.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';
import 'package:medisol/first_aid/stroke.dart';


class FirstaidPage extends StatelessWidget {
  static const String id = 'firstaidpage';
  final List<String> entries = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text('First aid ')),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          FirstaidComponents(
            problemText: 'burn',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BurnPage())),
            iconData: FontAwesomeIcons.burn,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'cuts',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CutsPage())),
            iconData: FontAwesomeIcons.cut,
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'stroke',
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>StrokePage())),
            iconData: FontAwesomeIcons.brain,
          ),
          SizedBox(
            height: 10.0,
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
