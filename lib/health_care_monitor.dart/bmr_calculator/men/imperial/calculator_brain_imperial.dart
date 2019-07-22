import 'dart:math';

class BmrCalculatorImperial {
  int height;
  int weight;
  int age;
  double _bmrimp;

  BmrCalculatorImperial({this.height, this.weight, this.age});

  double calculateImperial() {
    _bmrimp = 66.47 +
        (6.24 * (weight * 2.205)) +
        (12.7 * (height / 2.54)) -
        (6.755 * age);
    return _bmrimp;
  }
}
