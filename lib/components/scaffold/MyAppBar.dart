import 'package:flutter/material.dart';

class MyAppBar {
  final Function displayHandler;
  MyAppBar(this.displayHandler);

  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text("Budget Planner"),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.add,
          ),
          onPressed: () {
            displayHandler(context);
          },
        ),
      ],
    );
  }
}
