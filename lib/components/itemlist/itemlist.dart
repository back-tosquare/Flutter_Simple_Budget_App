import './NoTransaction.dart';

import '../itemcard/itemcard.dart';
import 'package:flutter/material.dart';
import '../../models/transaction.dart';

class ItemList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteHandler;

  ItemList({@required this.transactions, @required this.deleteHandler});
  @override
  Widget build(BuildContext context) {
    print(transactions.length);
    return transactions.isEmpty
        ? NoTransaction()
        : Container(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return ItemCard(
                  item: transactions[index],
                  deleteHandler: deleteHandler,
                );
              },
              itemCount: transactions.length,
            ),
          );
  }
}
