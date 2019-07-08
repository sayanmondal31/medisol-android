import 'package:flutter/material.dart';
import 'package:medisol/firstpage/card_content.dart';
import 'package:medisol/firstpage/reusable_card.dart';

class IconCards extends StatelessWidget {
  final String cardtext;
  final IconData cardicon;
  final Function press;
  IconCards({this.cardtext,this.press, this.cardicon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
          onPressed: press,
          cardChild: CardContent(
            icontextcad: Column(
              
              children: <Widget>[
                Icon(
                  cardicon,
                  size: 50,
                ),
                Text(
                  cardtext,
                  style: TextStyle(fontSize: 30,),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          colour: Colors.blue),
    );
  }
}
