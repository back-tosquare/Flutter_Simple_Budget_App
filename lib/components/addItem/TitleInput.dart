import 'package:flutter/material.dart';

class TitleInput extends StatelessWidget {
  final TextEditingController myController;
  final Function submitHandler;
  TitleInput(this.myController, this.submitHandler);
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        icon: Icon(Icons.shopping_basket),
        labelText: "Title",
      ),
      controller: myController,
      onSubmitted: (_) => submitHandler(),
    );
  }
}
