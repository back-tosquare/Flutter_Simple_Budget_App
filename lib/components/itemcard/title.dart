import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String text;

  MyTitle(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
