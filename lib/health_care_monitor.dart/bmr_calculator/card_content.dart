// import 'package:bmr_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/constants.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.icon, @required this.text});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70,
          color: Color(0xFF9999cf),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: ktextUi),
      ],
    );
  }
}
