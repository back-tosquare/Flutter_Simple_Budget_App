import 'package:flutter/material.dart';

class MyDate extends StatelessWidget {
  final String text;
  MyDate(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.brown,
      ),
    );
  }
}
