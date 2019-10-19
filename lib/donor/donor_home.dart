import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/constants.dart';
// import 'package:html/dom.dart' as prefix0;
import 'package:medisol/donor/button2donor.dart';
import 'package:medisol/donor/eye_donate.dart';

import 'package:medisol/donor/searchsevice.dart';
import 'package:medisol/firstpage/ButtonUi.dart';

class DonorHome extends StatefulWidget {
  @override
  _DonorHomeState createState() => _DonorHomeState();
}

class _DonorHomeState extends State<DonorHome> {
  var queryResultSet = [];
  var tempSearchStore = [];

  initiateSearch(value) {
    if (value.length == 0) {
      setState(() {
        queryResultSet = [];
        tempSearchStore = [];
      });
    }
    var letterValue = value.substring(0, 1) + value.substring(1);

    if (queryResultSet.length == 0 && value.length == 1) {
      SearchService().searchByName(value).then((QuerySnapshot docs) {
        for (int i = 0; i < docs.documents.length; ++i) {
          queryResultSet.add(docs.documents[i].data);
        }
      });
    } else {
      tempSearchStore = [];
      queryResultSet.forEach((element) {
        if (element['name'].startsWith(letterValue)) {
          setState(() {
            tempSearchStore.add(element);
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan.shade200,
        child: Container(height: 80.0,
        child: Row(
          children: <Widget>[
             Expanded(
                child: Column(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(FontAwesomeIcons.eye),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EyeDonate()));
                        } ),
                        Text('Eye')
                  ],
                ),
            ),
            Expanded(
                child: Column(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(FontAwesomeIcons.tint),
                        onPressed: () => {}),
                        Text('Blood'),
                  ],
                ),
           ),
          ],
        ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        
        backgroundColor: Colors.cyan,
        title: Center(child: Text('Donor')),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (val) {
                      initiateSearch(val);
                    },
                    decoration: InputDecoration(
                        hintText: 'search by name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0))),
                  ),
                ),
                GridView.count(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                    primary: false,
                    shrinkWrap: true,
                    children: tempSearchStore.map((element) {
                      return buildResultCard(element);
                    }).toList())
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildResultCard(data) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 2.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Name: ',style: ktextUi,),
            Text(data['name'],style: ktextDonor,),
          ],
        ),
        Row(
          children: <Widget>[
            Text('Address: ',style: ktextUi,),
            Text(data['address'],style: ktextDonor,),
          ],
        ),
        Row(
          children: <Widget>[
            Text('Gender: ',style: ktextUi,),
            Text(data['gender'],style: ktextDonor,),
          ],
        ),
        Row(
          children: <Widget>[Text('Mobile: ',style: ktextUi,), Text(data['mobile'],style: ktextDonor,)],
        ),
      ],
    ),
  );
}

// ListView(
//               children: <Widget>[
//                 TextField(
//                   onChanged: (val) {
//                     initiateSearch(val);
//                   },
//                   decoration: InputDecoration(
//                       hintText: 'search by name',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(4.0))),
//                 ),
//                 // ListView(
//                 //   children: tempSearchStore.map((element) {
//                 //     return buildResultCard(element);
//                 //   }).toList(),
//                 // )

//                 // GridView.count(
//                 //   padding: EdgeInsets.only(left: 10.0,right: 10.0),
//                 //   crossAxisCount: 2,
//                 //   crossAxisSpacing: 4.0,
//                 //   mainAxisSpacing: 4.0,
//                 //   primary: false,
//                 //   shrinkWrap: true,
//                 //   children: tempSearchStore.map((element){
//                 //     return buildResultCard(element);
//                 //   }).toList()
//                 // )
//               ],
//             ),
