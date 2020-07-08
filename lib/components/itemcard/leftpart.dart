import 'package:flutter/material.dart';
import './amount.dart';
import '../../models/transaction.dart';

class LeftPart extends StatelessWidget {
  final Transaction item;
  LeftPart(this.item);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
      radius: 35,
      child: FittedBox(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Amount("\$ ${item.amount.toStringAsFixed(2)}"),
        ),
      ),
    );
  }
}
