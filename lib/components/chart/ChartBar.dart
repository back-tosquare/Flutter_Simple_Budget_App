import 'package:flutter/material.dart';
import './ChartBarContainer.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final String amount;
  final double percentage;
  ChartBar(
      {@required this.label, @required this.amount, @required this.percentage});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              height: constraints.maxHeight * 0.05,
              child: Text(
                amount,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              width: 10,
              height: constraints.maxHeight * 0.7,
              child: ChartBarContainer(percentage),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              height: constraints.maxHeight * 0.05,
              child: Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
