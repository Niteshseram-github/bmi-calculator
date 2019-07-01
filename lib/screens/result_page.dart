import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget{

  ResultPage({@required this.bmiResult,@required this.resultText,@required this.bmiInterpretation});

  final String bmiResult;
  final String resultText;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child:Container(
                padding: EdgeInsets.all(15.0),
                alignment:Alignment.bottomLeft,
                child: Text('Your Result',
                style: kTitleTextStyle,),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText,
                  style: kResultTextStyle,
                  ),
                  Text(bmiResult,
                  style:kBMITextStyle ,
                  ),
                  Text(bmiInterpretation,
                  textAlign: TextAlign.center,
                  style:kBodyTextStyle)
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RECALCULATE',
          onTap:(){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }

}