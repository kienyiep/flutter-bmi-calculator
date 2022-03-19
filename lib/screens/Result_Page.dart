import 'file:///C:/Users/ASUS/AndroidStudioProjects/bmi_calculator/lib/components/Reusable_Card.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/bmi_calculator/lib/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
// import 'Reusable_Card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.bmiScore, this.result, this.interpretation);

  final String bmiScore;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result Page',
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiScore,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              bottomText: 're-Calculate',
            ),
          ),
        ],
      ),
    );
  }
}
