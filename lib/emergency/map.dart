import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      appBar: AppBar(
        title: Text("Near me "),
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

