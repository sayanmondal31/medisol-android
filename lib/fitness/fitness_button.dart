import 'package:flutter/material.dart';

class FitnessButton extends StatelessWidget {
  final Function press;
  final String text;
  final IconData iconData;
  final Color iconColor;

  FitnessButton({@required this.press, @required this.text, this.iconData,@required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        
        padding: const EdgeInsets.all(15.0),
        child:  RaisedButton(
          animationDuration: Duration(
            milliseconds: 1
          ),
            color: Color(0xFF9297d3),
            
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
          ),
        ),
      
    );
  }
}