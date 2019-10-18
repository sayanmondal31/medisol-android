import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/calculate_button.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/constants.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/reusable_card.dart';

class ResultPageMetric extends StatelessWidget {
  final String bmrResultMetric;
  // final String resultText;
  // final String interpretation;

  ResultPageMetric({
    @required this.bmrResultMetric,
    // @required this.resultText,
    // @required this.interpretation
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        title: Text('BMR  calculator'),
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
                        'BMR',
                        style: ktextUi,
                      ),
                      Text(
                        bmrResultMetric.toString(),
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
