import 'package:flutter/material.dart';

class BarDecoration extends StatelessWidget {
  final Color myColor;
  final Color borderColor;
  BarDecoration({this.myColor, this.borderColor});

  Color get bgColor {
    return (myColor == null) ? Colors.grey : myColor;
  }

  Color get bdrColor {
    return (borderColor == null) ? bgColor : borderColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: bdrColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: bgColor,
      ),
    );
  }
}
