import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:medisol/emergency/services.dart';

Location location = Location();

const _pinkHue = Colors.pinkAccent;
class EmergencyMap extends StatefulWidget {
  
  @override
  _EmergencyMapState createState() => _EmergencyMapState();
}

class _EmergencyMapState extends State<EmergencyMap> {
  Stream<QuerySnapshot> _hospitalNearme;
  @override
  void initState() {
    super.initState();
    _hospitalNearme =
        Firestore.instance.collection('hospital').orderBy('name').snapshots();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(""),
              accountEmail: new Text(''),
              currentAccountPicture: GestureDetector(
                onTap: () {},
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
            Divider(),
            

            new Divider(),
            new ListTile(
                title: new Text("log out "),
                trailing: new Icon(Icons.close),
                onLongPress: () {
                  // prefix1.signOutGoogle();
                  
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(width: 90,),
            Center(child: Text("Near me ")),
          ],
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _hospitalNearme,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: Text('Loading...'),
            );
          }
          return Column(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: StoreMap(
                    documents: snapshot.data.documents,
                    initialPosition: LatLng(22.572645,88.363892)),
              ),
              // Flexible(
              //   flex: 2,
              //   child: MapList(
              //     documents: snapshot.data.documents,
              //   ),
              // )
            ],
          );
        },
      ),
    );
  }
}

class MapList extends StatelessWidget {
  MapList({@required this.documents});

  final List<DocumentSnapshot> documents;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: documents.length,
      itemBuilder: (BuildContext context, int index) {
        final document = documents[index];
        return ListTile(
          title: Text(document['name']),
          subtitle: Text(document['address']),
        );
      },
    );
  }
}

class StoreMap extends StatelessWidget {
  StoreMap({this.initialPosition, this.documents});
  final List<DocumentSnapshot> documents;
  final LatLng initialPosition;
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: initialPosition,
        zoom: 12,
      ),
      myLocationEnabled: true,
      // markers: documents.map(
      //   (document) => Marker(
      //     markerId: MarkerId(document['placeId']),
      //     icon: BitmapDescriptor.defaultMarkerWithHue(_pinkHue),
      //     position: LatLng(
      //       document['location'].latitude,
      //       document['location'].longitude,
      //     ),
      //     infoWindow: InfoWindow(
      //       title: document['name'],
      //       snippet: document['address'],
      //     ),
      //   ),
      // ).toSet(),
    );
  }
}

