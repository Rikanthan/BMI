import 'dart:math';

class Finalresults
{
  Finalresults({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String CalculateBMI()
  {
     _bmi=weight / pow(height /100, 2);
    return _bmi.toStringAsFixed(1);

  }
  String Results()
  {
    if(_bmi >= 25.0)
      {
        return 'Overweight';
      }
   else if(_bmi  > 18.5)
    {
      return 'Normal';

    }
   else
     {
       return 'Underweight';
     }
  }



  String guidance()
  {
    if(_bmi> 25)
    {
      return 'You Should exercise more';
    }
    else if(_bmi > 18.5)
    {
      return 'You have normal weight';

    }
    else
    {
      return 'You Should eat more';
    }
  }


}