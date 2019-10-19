import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EyeDonate extends StatefulWidget {
  @override
  _EyeDonateState createState() => _EyeDonateState();
}

class _EyeDonateState extends State<EyeDonate> {
  final _donorstore = Firestore.instance;
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;
  String name, gender, address, number;
  List<DropdownMenuItem<String>> items = [
    new DropdownMenuItem(
      child: new Text('Male'),
      value: 'Male',
    ),
    new DropdownMenuItem(
      child: new Text('Female'),
      value: 'Female',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.cyan,
        title: new Text('Donor'),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Form(
            key: _key,
            autovalidate: _autovalidate,
            child: FormUI(),
          ),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: new InputDecoration(hintText: 'Name'),
                // validator: validateName,
                onChanged: (val) {
                  name = val;
                },
                maxLength: 32,
              ),
            ),
            new SizedBox(width: 10.0),
            new DropdownButtonHideUnderline(
                child: new DropdownButton(
              items: items,
              hint: new Text('Gender'),
              value: gender,
              onChanged: (String val) {
                setState(() {
                  gender = val;
                });
              },
            ))
          ],
        ),
        new TextField(
          decoration: new InputDecoration(hintText: 'Address'),
          onChanged: (String val) {
            address = val;
          },
          // validator: validateMessage,
          maxLines: 2,
          maxLength: 256,
        ),
        TextField(
          decoration: new InputDecoration(hintText: 'Mobile number'),
          onChanged: (String val) {
            number = val;
          },
          keyboardType: TextInputType.number,
          // validator: validateMessage,
          maxLines: 2,
          maxLength: 12,
        ),
        Center(
          child: new RaisedButton(
              color: Colors.cyan,
              onPressed: () {
                _sendToServer();
                Navigator.pop(context);
              },
              child: Text('Submit')),
        ),
        new SizedBox(height: 20.0),
      ],
    );
  }

  _sendToServer() async {
    try {
      await _donorstore.collection('donor').add({
        'name': name,
        'gender': gender,
        'address': address,
        'mobile': number,
      });
    } catch (e) {
      print(e);
    }
  }

  String validateName(String val) {
    return val.length == 0 ? "Enter Name First" : null;
  }

  String validateMessage(String val) {
    return val.length == 0 ? "Enter points First" : null;
  }
}

// import 'package:flutter/material.dart';
// import 'package:medisol/medicine_reminder/src/ui/new_entry/new_entry.dart';

// class EyeDoante extends StatefulWidget {
//   @override
//   _EyeDoanteState createState() => _EyeDoanteState();
// }

// class _EyeDoanteState extends State<EyeDoante> {
//   String dropdownValue = 'gender';
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.cyan,
//           title: Text(
//             'form',
//           ),
//         ),
//         body: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 25.0),
//           children: <Widget>[
//             PanelTitle(
//               title: 'Name',
//               isRequired: true,
//             ),
//             TextFormField(
//               maxLength: 100,
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//               textCapitalization: TextCapitalization.words,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//               ),
//             ),
//             PanelTitle(
//               title: 'Address',
//               isRequired: true,
//             ),
//             TextFormField(
//               maxLength: 100,
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//               textCapitalization: TextCapitalization.words,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//               ),
//             ),
//             PanelTitle(
//               title: 'Number',
//               isRequired: true,
//             ),
//             TextFormField(
//               maxLength: 100,
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//               textCapitalization: TextCapitalization.words,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//               ),
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }
