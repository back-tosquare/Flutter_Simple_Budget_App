import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  final Map<String, Object> flagValues;
  final Function showChartHandler;

  MySwitch({
    @required this.flagValues,
    @required this.showChartHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Show Chart",
          style: Theme.of(context).textTheme.headline2,
        ),
        Switch(
          value: flagValues["showChart"],
          onChanged: showChartHandler,
        ),
      ],
    );
  }
}
