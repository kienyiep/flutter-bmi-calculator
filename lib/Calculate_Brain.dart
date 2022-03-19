import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    }
    if (_bmi < 25 && _bmi > 18.5) {
      return 'normal';
    } else {
      return 'underWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal weight, try to excercise more';
    }
    if (_bmi < 25 && _bmi > 18.5) {
      return 'You have a normal body weight, good job';
    } else {
      return 'You have a lower than normal body weight, try to eat more';
    }
  }
}
