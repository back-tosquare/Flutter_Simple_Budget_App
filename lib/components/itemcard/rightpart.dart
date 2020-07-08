import 'package:flutter/material.dart';
import '../../models/transaction.dart';
import './title.dart';
import './date.dart';
import 'package:intl/intl.dart';

class RightPart extends StatelessWidget {
  final Transaction item;
  RightPart(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MyTitle(item.title),
          MyDate(DateFormat.yMMMEd().add_jm().format(item.date)),
        ],
      ),
    );
  }
}
