import 'package:flutter/material.dart';

import 'constants.dart';
class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   super.key,
  // });
  ReusableCard({required this.colour, this.childCard, this.onPress});
  final Color colour;
  final Widget? childCard;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return new  GestureDetector(
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:colour,
        ),
      ),
      onTap: (){
        if(onPress!=null){
          onPress!();
        }
      },
    );
  }
}