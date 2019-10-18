// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(Scaffold(
//     body: Center(
//       child: RaisedButton(
//         onPressed: _launchURL,
//         child: Text('Show Flutter homepage'),
//       ),
//     ),
//   ));
// }

// _launchURL() async {
//   const url = 'http://104.197.213.77/checkup.html';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }


// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: new Text("DSC_TIB"),
//       ),
      
//       url: "https://developer-student-club-tib.github.io/web/",
//       // withZoom: true,
//     );
//   }
// }
