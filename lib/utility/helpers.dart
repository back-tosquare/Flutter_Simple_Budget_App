import 'package:flutter/material.dart';

class Helpers {
  static double getDeviceDisplayAreaHeight(
      {@required BuildContext context, @required PreferredSizeWidget appBar}) {
    double displayAreaHeight = MediaQuery.of(context).size.height;
    double appBarHeight = appBar.preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double calculatedHeight =
        (displayAreaHeight - (appBarHeight + statusBarHeight));

    debugPrint(
        "$displayAreaHeight $appBarHeight $statusBarHeight $calculatedHeight");

    return calculatedHeight;
  }
}
