import 'package:flutter/material.dart';
import 'newcard.dart';
import 'input.dart';

const labletext=TextStyle(
fontSize: 20.0,
color: Colors.grey,
);
class cardicon extends StatelessWidget {
  cardicon({@required this.ic,this.tex});
  final IconData ic;
  final String tex;


  @override
  Widget build(BuildContext context) {
    return newcard(colour: cardColor,
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
              style: labletext,
          )


        ],
      ),);
  }
}
