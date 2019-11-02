import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/calculate_button.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/constants.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/reusable_card.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/round_icon.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/men/imperial/calculator_brain_imperial.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/men/imperial/result_men_imperial.dart';
import 'package:medisol/health_care_monitor.dart/calorie_calculator/men/brain.dart';
import 'package:medisol/health_care_monitor.dart/calorie_calculator/men/calorie_result.dart';

class CalorieCalPageMetric extends StatefulWidget {
  @override
  _CalorieCalPageMetricState createState() => _CalorieCalPageMetricState();
}

class _CalorieCalPageMetricState extends State<CalorieCalPageMetric> {
  // Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 30;
  // Color maleCardColor = inactiveColor;
  // Color femaleCardColor = inactiveColor;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveColor) {
  //       maleCardColor = colorChange;
  //       femaleCardColor = inactiveColor;
  //     } else {
  //       maleCardColor = inactiveColor;
  //     }
  //   }
  //   else if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inactiveColor) {
  //       femaleCardColor = colorChange;
  //       maleCardColor = inactiveColor;
  //     } else {
  //       femaleCardColor = inactiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      // appBar: AppBar(
      //   title: Text('BMR calculator'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                // Expanded(
                //   child: ReusableCard(
                //     onPressed: () {
                //       setState(() {
                //         selectedGender = Gender.male;
                //       });
                //     },
                //     cardChild: new CardContent(
                //       icon: FontAwesomeIcons.mars,
                //       text: "MALE",
                //     ),
                //     colour: selectedGender == Gender.male
                //         ? kcolorChange //for active Color
                //         : kinactiveColor,
                //   ),
                // ),
                // Expanded(
                //   child: ReusableCard(
                //     onPressed: () {
                //       setState(() {
                //         selectedGender = Gender.female;
                //       });
                //     },
                //     cardChild: CardContent(
                //       icon: FontAwesomeIcons.venus,
                //       text: "FEMALE",
                //     ),
                //     colour: selectedGender == Gender.female
                //         ? kcolorChange
                //         : kinactiveColor,
                //   ),
                // ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: ktextUi,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kheightWeightStyle,
                      ),
                      Text('cm', style: ktextUi),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      // activeColor: Colors.white,

                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              colour: Colors.brown,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Colors.brown,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: ktextUi,
                        ),
                        Text(
                          weight.toString(),
                          style: kheightWeightStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RawIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colors.brown,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: ktextUi,
                        ),
                        Text(
                          age.toString(),
                          style: kheightWeightStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RawIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateBMI(
            textb: "Calculate",
            onTap: () {
              CalorieCalculatorMetric cali = CalorieCalculatorMetric(
                  height: height, weight: weight, age: age);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CalorieResultPageMetric(
                          calorieResultMetric: cali.calculateMetricCalorie(),
                          // resultText: cal.getResult(),
                          // interpretation: cal.getInterpretation(),
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
