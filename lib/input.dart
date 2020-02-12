import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_contents.dart';
import 'newcard.dart';

const BottomBarHeight=80.0;
const cardColor =Color(0xFF1D1E33);
const inactivecardcolor =Color(0xFF111329);

enum Gender
{
  male,
  female
}

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override

  Color malecardcolor=inactivecardcolor;
  Color femalecardcolor=inactivecardcolor;

  Gender selectedGender;


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
                  child:GestureDetector
               (
                    onTap: (){
                      setState(() {
                        selectedGender=Gender.male;
                        print('male');
                      });
                    },

                    child:newcard(
                      colour: selectedGender==Gender.male ? cardColor : inactivecardcolor,cardchild: cardicon(ic: FontAwesomeIcons.mars,tex:'Male'),
                    ),
                  ),

                ),
                Expanded(
                  child: GestureDetector
                    (
                      onTap: (){
                        setState(() {
                          selectedGender=Gender.female;
                          print('female');
                        });
                      },
                      child:newcard(
                      colour: selectedGender==Gender.female ? cardColor : inactivecardcolor
                          ,cardchild:cardicon(ic: FontAwesomeIcons.venus,tex:'Female'
                      )
                           ),
                      ),

                )
              ],
            ),
          ),


          Expanded(
            child: Row
              (
              children: <Widget>[
                Expanded(
                  child: GestureDetector
                    (
                      onTap: (){
                        setState(() {

                          print('middle');
                        });
                      },


                    child: newcard(colour: cardColor)),

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
            child: Center(
              child: Text(
                'CALCULATE',
                style:TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ) ,
              ),
            ),
          ),

        ],
      ),


    );
  }
}


