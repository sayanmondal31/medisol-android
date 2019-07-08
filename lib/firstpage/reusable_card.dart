import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild; //cardChild is a widget .used for different functionality
  final Function onPressed;

  ReusableCard({@required this.colour, this.cardChild,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
          child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}