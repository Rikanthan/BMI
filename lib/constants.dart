import 'package:flutter/material.dart';

const kLabeltext=TextStyle
  (
  color: Colors.grey,
  fontSize: 20.0,
);

const kNumbertext=TextStyle
  (
  color: Colors.white,
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kBottomBarHeight=80.0;
const kcardColor =Color(0xFF1D1E33);
const kInactivecardcolor =Color(0xFF111329);

const kTitletext=TextStyle
  (
  color: Colors.white,
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);


const KBMItext=TextStyle
  (
  color: Colors.white,
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);


const KResulttext=TextStyle
  (
  color: Colors.green,
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const KBodytext=TextStyle
  (
  color: Colors.white,
  fontSize: 20.0,

);



class RoundIconButton extends StatelessWidget {


  RoundIconButton({this.icon,this.action});
  final IconData icon;
  final Function action;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: action,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}


class bottombutton extends StatelessWidget {
  bottombutton({this.text,this.onpress});
  final String text;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(

        color: Color(0xFF041D62),
        margin:EdgeInsets.only(top: 10.0),
        height: kBottomBarHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style:TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ) ,
          ),
        ),
      ),
    );
  }
}