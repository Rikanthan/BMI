import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_contents.dart';
import 'newcard.dart';
import 'constants.dart';



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
                  child:newcard(
                    onPress: () {
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                    colour: selectedGender==Gender.male ? kcardColor : kInactivecardcolor,cardchild: cardicon(ic: FontAwesomeIcons.mars,tex:'Male'),
                  ),

                ),
                Expanded(
                  child: newcard(
                    onPress: () {
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                  colour: selectedGender==Gender.female ? kcardColor : kInactivecardcolor
                      ,cardchild:cardicon(ic: FontAwesomeIcons.venus,tex:'Female'
                  )
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
                  child: newcard(colour: kcardColor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'HEIGHT',
                              style: kLabeltext,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                '150',
                                style: kNumbertext,
                              ),
                              Text(
                                'cm',
                              )
                            ],
                          )
                        ],

                  )),

                ),

              ],
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: newcard(colour: kcardColor),

                ),
                Expanded(
                  child: newcard(colour: kcardColor),
                       ),
              ],

            ),

          ),
          Container(

            color: Color(0xFF041D62),
            margin:EdgeInsets.only(top: 10.0),
            height: kBottomBarHeight,
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


