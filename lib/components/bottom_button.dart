import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.bottomText});
  final Function onTap;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomCardHeight,
        color: kBottomCardColor,
        child: Center(
          child: Text(
            bottomText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
