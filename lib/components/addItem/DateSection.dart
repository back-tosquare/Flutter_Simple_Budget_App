import 'package:flutter/material.dart';
import '../../utility/widgets.dart';
import 'package:intl/intl.dart';

class DateSection extends StatelessWidget {
  final DateTime pickedDate;
  final Function handler;
  DateSection({@required this.pickedDate, @required this.handler});
  @override
  Widget build(BuildContext context) {
    String displayText = (pickedDate == null)
        ? "No Date Selected"
        : "Choosen Date : ${DateFormat.yMMMd().format(pickedDate)}";
    return Container(
      height: 80,
      child: Row(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            child: Text(displayText),
          ),
          MyFlatButton(text: "Pick Date", handler: handler),
        ],
      ),
    );
  }
}
