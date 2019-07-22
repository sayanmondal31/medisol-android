import 'dart:math';

class BmrCalculatormetricWomen {
  int height;
  int weight;
  int age;
  double _bmr;

  BmrCalculatormetricWomen({this.height, this.weight, this.age});

  String calculateMetricwomen() {
    _bmr = 655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age);
    return _bmr.toStringAsFixed(1);
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
