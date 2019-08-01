import 'package:flutter/material.dart';

class FirstaidComponents extends StatelessWidget {
  // final String gotoPageName;
  final String problemText;
  final IconData iconData;
  final Function press;

  FirstaidComponents({@required this.press, @required this.problemText,@required this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        color: Colors.white54,
        elevation: 10.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData),
                SizedBox(width: 10,),
                Text(problemText,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}