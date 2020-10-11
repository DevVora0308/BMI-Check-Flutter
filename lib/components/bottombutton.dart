import 'package:flutter/material.dart';
import 'package:weight_check/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({this.onTap,this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:  EdgeInsets.all(20.0),
        height: BottomContHeight,
        width: BottomContWidth,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: BottomContColor ),
        alignment: Alignment.center ,
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}

