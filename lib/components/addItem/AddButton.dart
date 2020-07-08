import 'package:flutter/material.dart';
import '../../utility/widgets.dart';

class AddButton extends StatelessWidget {
  final Function handler;
  AddButton(this.handler);
  @override
  Widget build(BuildContext context) {
    return MyRaisedButton(
      text: "Add Transaction",
      handler: handler,
    );
  }
}
