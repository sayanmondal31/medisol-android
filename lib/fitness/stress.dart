// import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';

// void main() => runApp(XylophoneApp());

// class XylophoneApp extends StatelessWidget {
//   void playSounds(int SoundWave) {
//     final player = AudioCache();

//     player.play('note$SoundWave.wav');
//   }

//   Expanded biuldKey({Color color,int soundNumber}) {
//     return Expanded(
//       child: FlatButton(
//         color: color,
//         onPressed: () {
//           playSounds(soundNumber);
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black12,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,

//             children: <Widget>[
//               biuldKey(color: Colors.red,soundNumber: 1),
             
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }