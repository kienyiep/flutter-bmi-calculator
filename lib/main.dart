import 'package:flutter/material.dart';
import 'screens/input_page.dart';

class mainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: BMICalculator(),
      ),
    );
  }
}
