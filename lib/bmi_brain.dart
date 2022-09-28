import 'dart:math';

class BMIBrain {
  final int weight, height;
  late double _bmi;
  BMIBrain({required this.weight, required this.height});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() => _bmi > 25.0
      ? 'Overweight'
      : _bmi > 18.5
          ? 'Normal'
          : 'Underweight';
  String getInterpretation() => _bmi > 25.0
      ? 'How about hitting the gym right now? :)'
      : _bmi > 18.5
          ? 'Brilliant!! Keep it up like that ;)'
          : 'I got McDonald\'s number if you want (3';
}
