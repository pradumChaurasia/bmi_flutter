
import 'package:flutter/material.dart';
import 'reusable_button.dart';
import '../reusable_card.dart';
import '../constants.dart';

import '../input_page.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  // const ResultsPage({super.key});

  ResultsPage({required this.calculateBMI,required this.getResults,required this.getInterpretation});

  final String calculateBMI;
  final String getResults;
  final String getInterpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor:Color(0xFF0A0E21),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
         Expanded(
           child:Container(
               child: Text('Your Result',
                 style:kTitleTextStyle
               )
           )
         ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                    Text(getResults.toUpperCase(),style:kResultTextStyle,),
                  Text(calculateBMI,style: kBMITextStyle,),
                  Text(getInterpretation,style: kBodyTextStyle,
                  textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          Expanded(child: ReusableButton(
            Calulation: 'Re-Calculate',
            onPress: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>InputPage())
              );
            },
          ))
        ]
      )
    );
  }
}
