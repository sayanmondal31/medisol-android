import 'package:flutter/material.dart';
import 'package:medisol/first_aid/first_aid_page/common_page_handle.dart';

class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptoms'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          FirstaidComponents(
            problemText: 'Eye Problem',
            gotoPageName: '/symptomeyes',
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Fever',
            gotoPageName: '/symptomfever',
          ),
          SizedBox(
            height: 10.0,
          ),
          FirstaidComponents(
            problemText: 'Stomach problem',
            gotoPageName: '/symptomfever',
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
