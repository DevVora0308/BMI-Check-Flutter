import 'package:flutter/material.dart';
import 'package:weight_check/components/bottombutton.dart';
import 'package:weight_check/components/cardchild.dart';
import 'package:weight_check/components/reusablecard.dart';
import 'package:weight_check/constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiresult;
  final String resulttext;
  final String interpretation;

  ResultPage({@required this.bmiresult, @required this.resulttext, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          Expanded(child: Container(
              alignment: Alignment.center ,
              child: Text("YOUR RESULT",style: TitleTextStyle,),
              padding: EdgeInsets.all(20.0)
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Text(resulttext, style: ResultTextStyle),
                    Text(bmiresult, style: BMITextStyle),
                    Text(interpretation, style: ResultBodyTextStyle),
                  ],
              ),
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
                },
            buttonTitle: 'Check BMI',
            ),
        ],
      ),
    );
  }
}
