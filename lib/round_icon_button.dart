import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({super.key});
  RoundIconButton({this.child,this.onPress});
  final Widget? child;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed:(){
      if(onPress!=null){
        onPress!();
      }
    },
      child:child,

      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 6.0,
      shape:CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}