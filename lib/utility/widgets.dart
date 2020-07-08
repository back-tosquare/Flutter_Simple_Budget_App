import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final String text;
  final Function handler;
  MyRaisedButton({@required this.text, @required this.handler});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: handler,
      color: Theme.of(context).primaryColor,
      textColor: Theme.of(context).secondaryHeaderColor,
      elevation: 5,
    );
  }
}

class MyFlatButton extends StatelessWidget {
  final String text;
  final Function handler;
  MyFlatButton({@required this.text, @required this.handler});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: handler,
      textColor: Theme.of(context).primaryColor,
    );
  }
}
