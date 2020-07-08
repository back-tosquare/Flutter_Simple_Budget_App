import 'package:flutter/material.dart';
import '../../models/transaction.dart';

class DeleteIcon extends StatelessWidget {
  final Function deleteHandler;
  final Transaction item;
  DeleteIcon({@required this.deleteHandler, @required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          icon: Icon(
            Icons.delete,
            color: Theme.of(context).errorColor,
          ),
          onPressed: () {
            deleteHandler(item.id);
          }),
    );
  }
}
