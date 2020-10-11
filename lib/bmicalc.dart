import 'dart:math';
class CalculatorBrain{
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height,this.weight});

  String calculateBMI(){
    _bmi= weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getString()
  {
    if(_bmi>=25){
      return "OVERWEIGHT";
    }
    else if( _bmi>18.5){
      return "NORMAL";
    }
    else{
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return "Higher than Normal. Start Exercising";
    }
    else if( _bmi>18.5){
      return "Normal body Weight. Keep up the good work";
    }
    else{
      return "Lower than normal. Eat more";
    }
  }
}

