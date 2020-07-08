import 'package:flutter/material.dart';
import './ChartBar.dart';

class ChartBody extends StatelessWidget {
  final List<Map<String, Object>> groupedTransactions;
  ChartBody(this.groupedTransactions);

  double get maxAmount {
    return groupedTransactions.fold(0.0, (sum, item) {
      return sum + item["amount"];
    });
  }

  @override
  Widget build(BuildContext context) {
    print(maxAmount);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ...groupedTransactions.map((element) {
          double percentage = (element["amount"] == 0)
              ? 0
              : (element["amount"] as double) / maxAmount;
          return ChartBar(
            label: element["day"],
            amount: "\$ ${(element["amount"] as double).toStringAsFixed(0)}",
            percentage: percentage,
          );
        }).toList()
      ],
    );
  }
}
