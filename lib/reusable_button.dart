import 'package:flutter/material.dart';
import 'package:bmi_flutter/constants.dart';

class ReusableButton extends StatelessWidget {
  // const ReusableButton({
  //   super.key,
  // });
  ReusableButton({required this.Calulation, required this.onPress});

  final String Calulation;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        if(onPress!=null){
          onPress!();
        }
      },
      // onTap: (){
      //   Navigator.push(context,MaterialPageRoute(builder:
      //       (context){
      //     return ResultsPage();
      //   }));
      // },

      child: Container(
        child: Center(
          child: Text(Calulation,
              style:kButtonTextStyle),

        )
        ,
        margin: EdgeInsets.only(top:10.0),
        color:kBottomCardColor,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10.0),
        height: kBottomContainerHeight,
      ),
    );
  }
}

// GestureDetector(
// onTap: (){
// Navigator.push(context,MaterialPageRoute(builder:
// (context){
// return ResultsPage();
// }));
// },
// child: ReusableButton(Calulation: 'Calculate',),
// )