import 'package:flutter/material.dart';
import 'package:weight_check/constants.dart';

const double iconsize = 75.0;
const sizedboxht = 15.0;

class CardChild extends StatelessWidget {
  final IconData icon;
  final String label;
  CardChild({@required this.icon, @required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon(
            this.icon,
            size: iconsize
        ),
        SizedBox(height: sizedboxht),
        Text(
          this.label,
          style: LabelTextStyle
        )
      ],
    );
  }
}

class widget {
}
