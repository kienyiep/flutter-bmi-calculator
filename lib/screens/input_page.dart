import 'package:bmi_calculator/Calculate_Brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/Reusable_Card.dart';
import 'package:bmi_calculator/components/Icon_Content.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/Round_Icon_Button.dart';
import 'Result_Page.dart';

void main() {
  runApp(mainApp());
}

enum Gender {
  male,
  female,
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int height = 180;
  int weight = 60;
  int age = 21;
  Gender selectedGender;
  // Color maleCardColor = InActiveCardColor;
  // Color femaleCardColor = InActiveCardColor;
  // void selectGenderCard(Gender selectGender) {
  //   if (selectGender == Gender.male) {
  //     if (maleCardColor == InActiveCardColor) {
  //       maleCardColor = ActiveCardColor;
  //       femaleCardColor = InActiveCardColor;
  //     } else {
  //       maleCardColor = InActiveCardColor;
  //     }
  //   }
  //
  //   if (selectGender == Gender.female) {
  //     if (femaleCardColor == InActiveCardColor) {
  //       femaleCardColor = ActiveCardColor;
  //       maleCardColor = InActiveCardColor;
  //     } else {
  //       femaleCardColor = InActiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                        //selectGenderCard(Gender.female);
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      // activeColor: Colors.white,
                      // inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                // Icons.add,
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: columnContent(
                      attribute: 'Age',
                      amount: age,
                      buttonWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                          SizedBox(width: 10),
                          RoundIconButton(
                            onTap: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              // setState(() {
              CalculatorBrain calc = new CalculatorBrain(
                  height: height.toInt(), weight: weight.toInt());
              String bmiScore = calc.calculateBMI();
              String result = calc.getResult();
              String interpretation = calc.getInterpretation();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(bmiScore, result, interpretation);
                  },
                ),
              );
              // });
            },
            bottomText: 'Calculate',
          ),
        ],
      ),
    );
  }
}

class columnContent extends StatelessWidget {
  columnContent(
      {@required this.attribute,
      @required this.amount,
      @required this.buttonWidget});
  final int amount;
  final String attribute;

  final Widget buttonWidget;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          attribute,
          style: kLabelTextStyle,
        ),
        Text(
          amount.toString(),
          style: kNumberTextStyle,
        ),
        buttonWidget,
      ],
    );
  }
}
