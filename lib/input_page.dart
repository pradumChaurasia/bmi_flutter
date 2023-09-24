import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_flutter/icon_content.dart';
import 'package:bmi_flutter/reusable_card.dart';
import 'package:bmi_flutter/constants.dart';
import 'results_page.dart';
import 'reusable_button.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';
// import 'package:bmi_flutter/calculator_brain.dart';

// const bottomContainerHeight=80.0;
// const bottomCardColor=Color(0xFFEB1555);
// const activeCardColor=Color(0xFF1D1E33);
// const inactiveCardColor=Color(0xFF111328);

enum GenderType{
  male,
  female
}


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;
  int height=180;
  int weight=50;
  int age=23;
  // Color maleCardColor=inactiveCardColor;
  // Color femaleCardColor=inactiveCardColor;
  //
  // void updateColor(GenderType gender){
  //   //male card is presses
  //   if(gender==GenderType.male){
  //     if(maleCardColor==inactiveCardColor){
  //       maleCardColor=activeCardColor;
  //       femaleCardColor=inactiveCardColor;
  //     }
  //     else{
  //       femaleCardColor=activeCardColor;
  //     }
  //   }
  //
  //   //female card is pressed
  //   if(gender==GenderType.female){
  //     if(femaleCardColor==inactiveCardColor){
  //       femaleCardColor=activeCardColor;
  //       maleCardColor=inactiveCardColor;
  //     }
  //     else{
  //       maleCardColor=activeCardColor;
  //     }
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor:Color(0xFF0A0E21)
      ),
      body: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Expanded(
               child:Row(
                 children: <Widget>[
                   Expanded(child: ReusableCard(
                     onPress: (){
                       setState(() {

                        selectedGender=GenderType.male;
                        print('male ');
                       });
                     },
                     childCard: ReusableCard2(icon:FontAwesomeIcons.mars,
                         label:'MALE'
                     ),
                       colour:selectedGender==GenderType.male?kActiveCardColor:kInactiveCardColor,
                   ),
                   ),
                   Expanded(child: ReusableCard(
                     onPress: (){
                       setState(() {

                         selectedGender=GenderType.female;
                         print('female ');
                       });
                     },
                     childCard: ReusableCard2(icon:FontAwesomeIcons.venus,
                     label:'FEMALE'),
                       colour:selectedGender==GenderType.female? kActiveCardColor: kInactiveCardColor,
                   ),
                   )
                 ],
               )
           ),
            Expanded(child: ReusableCard(
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Text('HEIGHT',
                      style: kLabelTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:<Widget>[
                        Text(height.toString(),
                        style:kNumberTextStyle
                        ),
                        Text('cm',
                        style:kLabelTextStyle)
                      ]
                    ),
                    SliderTheme(
                      data:SliderTheme.of(context).copyWith(
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555)
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                          max: 220.0,
                        onChanged: (double newValue){
                            print(newValue);
                                setState(() {
                                  height=newValue.round();
                                });
                        },
                        // activeColor: kBottomCardColor,
                        // inactiveColor: Color(0xFF8D8E98),

                      ),
                    )
                  ],
                ),
                colour:kInactiveCardColor,
            ),
            ),
            Expanded(child: Row(
              children:<Widget>[
                Expanded(child: ReusableCard(
                  childCard: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT',
                      style: kLabelTextStyle,
                      ),
                      Text(weight.toString(),
                      style:kNumberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            child:Icon(
                              FontAwesomeIcons.plus,
                            ),
                            onPress: (){
                              setState(() {
                                weight++;
                              });
                            },


                          ),

                          // FloatingActionButton(
                          //   backgroundColor: Color(0xFF4C4F55),
                          //   child: Icon(
                          //     Icons.add,
                          //     color: Colors.white,
                          //   ),
                          //   onPressed: (){
                          //
                          //   },
                          // ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                              child:Icon(
                                FontAwesomeIcons.minus,
                              ),
                            onPress: (){
                              setState(() {
                                if(weight>0){
                                  weight--;
                                }

                              });
                            },
                          ),
                          // FloatingActionButton(
                          //   backgroundColor: Color(0xFF4C4F55),
                          //   child: Icon(
                          //     Icons.add,
                          //     color: Colors.white,
                          //   ),
                          //   onPressed: (){
                          //
                          //   },
                          // ),
                        ],
                      )
                    ],
                  ),
                    colour:kInactiveCardColor,
                ),
                ),
                Expanded(child: ReusableCard(
                    colour:kInactiveCardColor,
                  childCard:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text('AGE',
                      style:kLabelTextStyle),
                      Text(age.toString(),
                      style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            child:Icon(
                              FontAwesomeIcons.plus,

                            ),
                            onPress: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            child:Icon(
                              FontAwesomeIcons.minus,

                            ),
                            onPress: (){
                              setState(() {
                                if(age>0){
                                  age--;
                                }
                              });
                            },
                          )
                        ],
                      )
                    ],
                  )
                ),
                ),
              ]
            ),
            ),
            ReusableButton(Calulation: 'Calulate',
            onPress: (){

                    CalculatorBrain mycalc = CalculatorBrain(height: height, weight: weight);



                  Navigator.push(context,MaterialPageRoute(builder:
                      (context){
                    return ResultsPage(
                            calculateBMI: mycalc.calculateBMI(),
                      getResults: mycalc.getResult(),
                      getInterpretation: mycalc.getInterpretation(),

                    );
                  }));
                  },

              )

          ],

        ),


      )
      // floatingActionButton: Theme(
      //   data:ThemeData(
      //
      //   ),
      //   child: FloatingActionButton(
      //     child:Icon(Icons.add),
      //     onPressed: (){
      //
      //     },
      //   ),
      // ),
    );
  }
}

// class ReusableButton extends StatelessWidget {
//   const ReusableButton({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text('Calculate',
//         style:kButtonTextStyle),
//
//       )
//       ,
//       margin: EdgeInsets.only(top:10.0),
//       color:kBottomCardColor,
//       width: double.infinity,
//       padding: EdgeInsets.only(bottom: 10.0),
//       height: kBottomContainerHeight,
//     );
//   }
// }

// class RoundIconButton extends StatelessWidget {
//   // const RoundIconButton({super.key});
//   RoundIconButton({this.child,this.onPress});
//   final Widget? child;
//   final Function? onPress;
//
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(onPressed:(){
//       if(onPress!=null){
//         onPress!();
//       }
//     },
//       child:child,
//
//       constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
//       elevation: 6.0,
//       shape:CircleBorder(),
//       fillColor: Color(0xFF4C4F5E),
//     );
//   }
// }


// onTap: (){
// setState(() {
// // updateColor(GenderType.male);
// selectedGender=GenderType.male;
// print('male ');
// },
// );
// },

// class ReusableCard2 extends StatelessWidget {
//   // const ReusableCard2({
//   //   super.key,
//   // });
//   ReusableCard2({this.icon,required this.label});
//   final IconData? icon;
//   final String label;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children:<Widget>[
//         Icon(icon,
//             size:80.0),
//         SizedBox(
//           height: 15.0,
//         ),
//         Text(label,
//         style: TextStyle(
//           fontSize: 18.0,
//           color: Color(0xFF8D8E98)
//         ),
//         )
//
//       ]
//
//     );
//   }
// }
//
// class ReusableCard extends StatelessWidget {
//   // const ReusableCard({
//   //   super.key,
//   // });
//   ReusableCard({required this.colour, this.childCard});
//   final Color colour;
//   final Widget? childCard;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: childCard,
//       margin: EdgeInsets.all(15.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         color:colour,
//       ),
//     );
//   }
// }