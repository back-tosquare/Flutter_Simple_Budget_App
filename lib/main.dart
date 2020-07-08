import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Budget Planner",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        secondaryHeaderColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: "Arial",
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
