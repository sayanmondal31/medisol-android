import 'package:flutter/material.dart';




class CardContent extends StatelessWidget {
  CardContent({@required this.icontextcad});
  
  final Widget icontextcad;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          
          
        child:icontextcad,
        // SizedBox(
        //   height: 15.0,
        // ),
        // Text(text, style: ktextUi),
        )
      ],
    );
  }
}