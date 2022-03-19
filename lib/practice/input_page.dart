import 'package:flutter/material.dart';

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
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
