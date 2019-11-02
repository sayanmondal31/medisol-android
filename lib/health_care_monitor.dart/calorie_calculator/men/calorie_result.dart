import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/calculate_button.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/constants.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/reusable_card.dart';

class CalorieResultPageMetric extends StatelessWidget {
  final String calorieResultMetric;
  // final String resultText;
  // final String interpretation;

  CalorieResultPageMetric({
    @required this.calorieResultMetric,
    // @required this.resultText,
    // @required this.interpretation
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        title: Text('Calorie  calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kresultPage,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Colors.brown,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Text(
                  //   resultText.toUpperCase(),
                  //   style: kresultTextStyle,
                  // ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Calorie',
                        style: ktextUi,
                      ),
                      Text(
                        calorieResultMetric.toString(),
                        style: kBMItextStyle,
                      ),
                    ],
                  ),
                  // Text(
                  //   interpretation,
                  //   style: kresultBodyText,
                  //   textAlign: TextAlign.center,
                  // )
                ],
              ),
            ),
          ),
          CalculateBMI(
            textb: "Re-calculate",
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
