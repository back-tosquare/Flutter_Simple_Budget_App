import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  final String text;

  Amount(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 25,
      ),
    );
  }
}
