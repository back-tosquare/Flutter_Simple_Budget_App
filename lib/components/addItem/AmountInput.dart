import 'package:flutter/material.dart';

class AmountInput extends StatelessWidget {
  final TextEditingController myController;
  final Function submitHandler;
  AmountInput(this.myController, this.submitHandler);
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.monetization_on),
        labelText: "Amount",
      ),
      controller: myController,
      keyboardType: TextInputType.number,
      onSubmitted: (_) => submitHandler(),
    );
  }
}
