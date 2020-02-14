import 'dart:math';

class Finalresults
{
  Finalresults({this.weight,this.height});
  final int height;
  final int weight;
  double _bmi;
  String CalculateBMI()
  {
     _bmi=weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }
  String Results()
  {
    if(_bmi > 25)
      {
        return 'Overweight';
      }
   else if(_bmi < 18.5)
    {
      return 'Underweight';

    }
   else
     {
       return 'Normal';
     }
  }



  String guidance()
  {
    if(_bmi>=25)
    {
      return 'You Should exercise more';
    }
    else if(_bmi< 18.5)
    {
      return 'You Should eat more';

    }
    else
    {
      return 'You have normal weight';
    }
  }


}