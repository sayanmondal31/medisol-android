import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/calculate_button.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/constants.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI  calculator'),
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
              colour: kcolorChange,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'BMI',
                        style: ktextUi,
                      ),
                      Text(
                        bmiResult,
                        style: kBMItextStyle,
                      ),
                    ],
                  ),
                  Text(
                    interpretation,
                    style: kresultBodyText,
                    textAlign: TextAlign.center,
                  )
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
