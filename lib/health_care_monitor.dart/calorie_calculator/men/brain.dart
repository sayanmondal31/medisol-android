import 'dart:math';

class BmrCalculatorMetric {
  int height;
  int weight;
  int age;
  double _calorie;

  BmrCalculatorMetric({this.height, this.weight, this.age});

  String calculateMetricCalorie() {
    _calorie = 66.47 + (13.75 * weight) + (5 * height) - (6.755 * age);
    return _calorie.toStringAsFixed(1);
  }

  // String getResult() {
  //   if (_bmr >= 25) {
  //     return 'Overweight';
  //   } else if (_bmr > 18.5) {
  //     return 'Normal';
  //   } else {
  //     return 'Underweight';
  //   }
  // }

  // String getInterpretation() {
  //   if (_bmr >= 25) {
  //     return 'You should start exercise';
  //   } else if (_bmr > 18.5) {
  //     return 'happy life,stay fit all time';
  //   } else {
  //     return 'you need more food ';
  //   }
  // }
}