import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';


class FirstaidPage extends StatelessWidget {
  static const String id = 'firstaidpage';
  final List<String> entries = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First aid '),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          FirstaidComponents(
            problemText: 'burn',
            gotoPageName: '/firstaidburn',
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'cuts',
            gotoPageName: '/firstaidcuts',
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'stroke',
            gotoPageName: '/firstaidstroke',
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'tearoff',
            gotoPageName: '/firstaidtear',
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
