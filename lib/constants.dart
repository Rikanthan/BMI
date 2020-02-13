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
