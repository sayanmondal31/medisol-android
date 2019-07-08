import 'package:flutter/material.dart';

class FirstaidComponents extends StatelessWidget {
  final String gotoPageName;
  final String problemText;

  FirstaidComponents({@required this.gotoPageName, @required this.problemText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, gotoPageName);
      },
      child: Card(
        elevation: 6.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(problemText),
          ),
        ),
      ),
    );
  }
}