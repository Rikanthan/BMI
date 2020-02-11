import 'package:flutter/material.dart';

class newcard extends StatelessWidget {
  newcard({this.colour,this.cardchild});
  final Color colour;
  final Widget cardchild;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,


        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
