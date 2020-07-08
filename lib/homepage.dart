import 'package:flutter/material.dart';
import './components/scaffold/MainBody.dart';
import './components/scaffold/MyAppBar.dart';
import './models/transaction.dart';
import './components/addItem/addItem.dart';
import './utility/helpers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> _transactions = [
    Transaction(
        id: '${DateTime.now()}',
        title: 'New Shoes',
        amount: 70.5,
        date: DateTime.now()),
    Transaction(
        id: '${DateTime.now()}',
        title: 'New Book',
        amount: 35.5,
        date: DateTime.now()),
  ];

  List<Transaction> get _recentTransactions {
    return _transactions.where((element) {
      return element.date.isAfter(DateTime.now().subtract(Duration(
        days: 7,
      )));
    }).toList();
  }

  Map<String, Object> _flagValues = {"showChart": false};

  void _addTransactionHandler(
      {@required String title,
      @required double amount,
      @required DateTime date}) {
    setState(() {
      _transactions.add(Transaction(
        id: "${DateTime.now()}",
        title: title,
        amount: amount,
        date: date,
      ));
    });
  }

  void _deleteTransaction(String id) {
    setState(() {
      _transactions.removeWhere((element) {
        return element.id == id;
      });
    });
  }

  void _displayModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (bctx) {
          print("Modal");
          return AddItem(_addTransactionHandler);
        });
  }

  void _showChartHandler(bool value) {
    setState(() {
      _flagValues["showChart"] = value;
    });
  }

  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = MyAppBar(_displayModal).build(context);

    double deviceHeight = Helpers.getDeviceDisplayAreaHeight(
      context: context,
      appBar: appBar,
    );

    final bool isLandScape =
        (MediaQuery.of(context).orientation == Orientation.landscape);

    _flagValues["deviceHeight"] = deviceHeight;
    _flagValues["isLandScape"] = isLandScape;

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: MainBody(
          transactions: _transactions,
          recentTransactions: _recentTransactions,
          deleteHandler: _deleteTransaction,
          flagValues: _flagValues,
          showChartHandler: _showChartHandler,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _displayModal(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
