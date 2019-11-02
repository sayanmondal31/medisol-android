import 'dart:math';

class CalorieCalculatorMetric {
  int height;
  int weight;
  int age;
  double _calorie;
  double _bmr;

  CalorieCalculatorMetric({this.height, this.weight, this.age});

  String calculateMetricCalorie() {
    _bmr = 66.47 + (13.7516 * weight) + (5.0033 * height) - (6.755 * age);
    _calorie = _bmr*1.2;
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
