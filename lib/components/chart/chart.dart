import 'package:flutter/material.dart';
import '../../models/transaction.dart';
import 'package:intl/intl.dart';
import './ChartBody.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) {
      DateTime weekday = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;
      recentTransactions.forEach((element) {
        if (element.date.day == weekday.day &&
            element.date.month == weekday.month &&
            element.date.year == weekday.year) {
          totalSum += element.amount;
        }
      });
      return {
        "day": DateFormat.E().format(weekday).substring(0, 1),
        "amount": totalSum
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    print(groupedTransactions);
    return Container(
      child: Card(
        elevation: 6,
        margin: EdgeInsets.all(5),
        child: ChartBody(groupedTransactions),
      ),
    );
  }
}
