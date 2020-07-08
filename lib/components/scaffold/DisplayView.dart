import 'package:flutter/material.dart';
import '../../models/transaction.dart';
import '../chart/chart.dart';
import '../itemlist/itemlist.dart';

class DisplayView extends StatelessWidget {
  final List<Transaction> transactions;
  final List<Transaction> recentTransactions;
  final Function deleteHandler;
  final Map<String, Object> flagValues;

  DisplayView({
    @required this.transactions,
    @required this.recentTransactions,
    @required this.deleteHandler,
    @required this.flagValues,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = flagValues["deviceHeight"];

    Widget getChartWidget(double multiplier) {
      return Container(
        child: Chart(recentTransactions),
        height: deviceHeight * multiplier,
      );
    }

    Widget getListWidget(double multiplier) {
      return Container(
        child: ItemList(
          transactions: transactions,
          deleteHandler: deleteHandler,
        ),
        height: deviceHeight * multiplier,
      );
    }

    if (flagValues["isLandScape"]) {
      return (flagValues["showChart"])
          ? getChartWidget(0.8)
          : getListWidget(0.8);
    } else {
      return Column(
        children: <Widget>[getChartWidget(0.4), getListWidget(0.6)],
      );
    }
  }
}
