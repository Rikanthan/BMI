import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_contents.dart';
import 'newcard.dart';
import 'constants.dart';
import 'results_page.dart';
import 'calculate_BMI.dart';



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
  int height=150;
  int weight=60;
  int age=23;

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
                                height.toString(),
                                style: kNumbertext,
                              ),
                              Text(
                                'cm',
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Colors.blueGrey,
                              activeTrackColor: Colors.white70,
                              thumbColor: Color(0xFF041D62),
                              overlayColor: Color(0x29041D62),
                              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 18.0),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),

                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,

                              onChanged: (double newHeight){
                                setState(() {
                                  height=newHeight.round();
                                });

                              },

                            ),
                          ),
                        ],


                      )
                  ),

                ),

              ],
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: newcard(colour: kcardColor,
                    cardchild: Column(
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                                style: kLabeltext,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumbertext,
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icon:FontAwesomeIcons.minus ,
                                action: (){
                                setState(() {
                                  weight--;
                                });
                                } ,),
                              SizedBox(
                                width: 10.0,

                              ),
                              RoundIconButton(icon: FontAwesomeIcons.plus,
                                action: (){
                                setState(() {
                                  weight++;
                                });

                                } ,)
                            ],
                          )

                        ],


                      ),),

                ),
                Expanded(
                  child: newcard(colour: kcardColor,
                  cardchild: Column(
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kLabeltext,
                      ),
                      Text(
                        age.toString(),
                        style: kNumbertext,
                      ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(icon:FontAwesomeIcons.minus ,action: (){
                            setState(() {
                              age--;
                            });
                          },),
                          SizedBox(
                            width: 10.0,

                          ),
                          RoundIconButton(icon: FontAwesomeIcons.plus,
                          action: (){
                            setState(() {
                              age++;
                            });
                          },)
                        ],
                      )

                    ],


                  )
                    ,),
                       ),
              ],

            ),

          ),
          bottombutton(text:'CALCULATE',onpress:(){

            Finalresults calc=Finalresults(height: height,weight: weight);



            Navigator.push(context, MaterialPageRoute(builder: (context)=> Resultspage(txt: calc.Results(),bm: calc.CalculateBMI(),g:calc.guidance()) ));
          } ,),

        ],
      ),


    );
  }
}




