import 'package:flutter/material.dart';

class ButtonTabs extends StatelessWidget {
  final String text;
  final Function press;

  ButtonTabs({this.text, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(top: 200, bottom: 300),
        child: Card(
          color: Colors.amber,
          child: Center(
              child: Text(
            text,
            style: TextStyle(fontSize: 20),
          )),
        ),
      ),
    );
  }
}
