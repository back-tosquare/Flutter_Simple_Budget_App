import 'package:flutter/material.dart';
import '../../models/transaction.dart';
import './leftpart.dart';
import './rightpart.dart';
import './deleteIcon.dart';

class ItemCard extends StatelessWidget {
  final Transaction item;
  final Function deleteHandler;

  ItemCard({@required this.item, @required this.deleteHandler});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            child: LeftPart(item),
            margin: EdgeInsets.all(10),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              child: RightPart(item),
              margin: EdgeInsets.all(10),
            ),
          ),
          DeleteIcon(
            item: item,
            deleteHandler: deleteHandler,
          ),
        ],
      ),
      elevation: 10,
    );
  }
}
