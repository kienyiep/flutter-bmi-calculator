import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      //
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0A0E21),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   textTheme: TextTheme(
      //     body1: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      //   accentColor: Colors.purple,
      // ),
      //
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // accentColor: Colors.deepPurple,
      ),
      home: inputPage(),
    );
  }
}

class mainApp extends StatefulWidget {
  @override
  _mainAppState createState() => _mainAppState();
}

class _mainAppState extends State<mainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI calculator',
        ),
      ),
      body: Center(
        child: Text(
          'text 1',
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.deepPurple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
