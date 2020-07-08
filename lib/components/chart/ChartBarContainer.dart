import 'package:flutter/material.dart';
import './BarDecoration.dart';

class ChartBarContainer extends StatelessWidget {
  final double percentage;
  ChartBarContainer(this.percentage);
  static const barColor = Colors.purple;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        BarDecoration(borderColor: barColor),
        FractionallySizedBox(
          heightFactor: percentage,
          child: BarDecoration(
            myColor: barColor,
          ),
        ),
      ],
    );
  }
}
