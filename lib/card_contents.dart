import 'package:flutter/material.dart';
import 'newcard.dart';
import 'input.dart';
import 'constants.dart';





class cardicon extends StatelessWidget {
  cardicon({@required this.ic,this.tex});
  final IconData ic;
  final String tex;


  @override
  Widget build(BuildContext context) {
    return newcard(colour: kcardColor,
      cardchild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            ic,
            size: 80.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            tex,
              style:kLabeltext
          )


        ],
      ),);
  }
}
