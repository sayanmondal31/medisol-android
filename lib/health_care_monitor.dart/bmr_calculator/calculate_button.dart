// import 'package:bmr_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/constants.dart';

class CalculateBMI extends StatelessWidget {
  final String textb;
  final Function onTap;

  CalculateBMI({@required this.textb, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            textb,
            style: klargeButton,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}
