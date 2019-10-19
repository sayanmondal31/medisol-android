import 'package:flutter/material.dart';

const ktextUi = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF9999cf),
);
const ktextDonor = TextStyle(
  fontSize: 20.0,
  fontStyle: FontStyle.italic,
  color: Colors.grey
);
const kDecorationbox = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.teal, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.teal, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
