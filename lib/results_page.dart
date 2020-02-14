import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'newcard.dart';
import 'input.dart';

class Resultspage extends StatelessWidget {

  Resultspage({this.txt,this.bm,this.g});

  final String txt;
  final String bm;
  final String g;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
                'Your result',style: kTitletext,)

            ,

          ),
          Expanded(
            flex: 5,
            child: newcard(
              colour: kcardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    txt,style: KResulttext,
                  ),
                  Text(
                    bm,style: KBMItext,
                  ),
                  Text(
                    g,style: KBodytext,
                  ),
                ],
              ),
            ),

          ),
          bottombutton(text: 'RECALCULATE',onpress:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Input() ));
    },),


        ],
      ),

    );
  }
}
