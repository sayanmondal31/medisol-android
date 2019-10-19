import 'package:flutter/material.dart';

class ButtonUi2 extends StatelessWidget {
  const ButtonUi2({
    Key key,
    @required this.press,
    @required this.iconData,
    @required this.iconColor,
    @required this.text,
  }) : super(key: key);

  final Function press;
  final IconData iconData;
  final Color iconColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.white54,
        
        elevation: 20.0,
        onPressed: press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              size: 50.0,
              color: iconColor,
            ),
            SizedBox(height: 10.0,),
            Text(text,style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,)
          ],
        ),
      );
  }
}