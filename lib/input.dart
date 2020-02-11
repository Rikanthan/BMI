import 'package:flutter/material.dart';
const BottomBarHeight=80.0;
const cardColor=Color(0xFF1D1E33);

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'
        ),
      ),

      body: Column(
        children: <Widget>[

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: newcard(colour: cardColor),

                ),
                Expanded(
                  child: newcard(colour: cardColor),

                )
              ],
            ),
          ),


          Expanded(
            child: Row
              (
              children: <Widget>[
                Expanded(
                  child: newcard(colour: cardColor),

                ),

              ],
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: newcard(colour: cardColor),

                ),
                Expanded(
                  child: newcard(colour: cardColor),
                       ),
              ],

            ),

          ),
          Container(
            color: Color(0xFF041D62),
            margin:EdgeInsets.only(top: 10.0),
            height: BottomBarHeight,
            width: double.infinity,
          ),

        ],
      ),


    );
  }
}

class newcard extends StatelessWidget {
  newcard({this.colour});
  Color colour;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
