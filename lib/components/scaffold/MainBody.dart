import 'package:flutter/material.dart';
import '../../models/transaction.dart';
import './MySwitch.dart';
import './DisplayView.dart';

class MainBody extends StatelessWidget {
  final List<Transaction> transactions;
  final List<Transaction> recentTransactions;
  final Function deleteHandler;
  final Map<String, Object> flagValues;
  final Function showChartHandler;

  MainBody({
    @required this.transactions,
    @required this.recentTransactions,
    @required this.deleteHandler,
    @required this.flagValues,
    @required this.showChartHandler,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (flagValues["isLandScape"])
            MySwitch(
              flagValues: flagValues,
              showChartHandler: showChartHandler,
            ),
          DisplayView(
              transactions: transactions,
              recentTransactions: recentTransactions,
              deleteHandler: deleteHandler,
              flagValues: flagValues),
        ],
      ),
    );
  }
}
