import 'dart:math';

class BmiCalculator {
  int height;
  int weight;
  double _bmi;

  BmiCalculator({this.height, this.weight});

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You should start exercise';
    } else if (_bmi > 18.5) {
      return 'happy life,stay fit all time';
    } else {
      return 'you need more food ';
    }
  }
}
