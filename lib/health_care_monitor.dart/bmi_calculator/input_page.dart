import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/calculate_button.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/calculator_brain.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/card_content.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/constants.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/resuts_page.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/reusable_card.dart';
import 'package:medisol/health_care_monitor.dart/bmi_calculator/round_icon.dart';

enum Gender {
  male,
  female,
}

class BmiCalPage extends StatefulWidget {
  @override
  _BmiCalPageState createState() => _BmiCalPageState();
}

class _BmiCalPageState extends State<BmiCalPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: new CardContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                    colour: selectedGender == Gender.male
                        ? Colors.blue.shade200 //for active Color
                        : kinactiveColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                    colour: selectedGender == Gender.female
                        ? Colors.blue.shade200
                        : kinactiveColor,
                  ),
                ),
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
              colour: Colors.blue.shade200
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blue.shade200,
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
                    colour: Colors.blue.shade200,
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
              BmiCalculator cal = BmiCalculator(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          bmiResult: cal.calculate(),
                          resultText: cal.getResult(),
                          interpretation: cal.getInterpretation(),
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
