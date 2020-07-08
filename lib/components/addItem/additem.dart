import 'package:flutter/material.dart';
import './TitleInput.dart';
import './AmountInput.dart';
import './AddButton.dart';
import './DateSection.dart';

class AddItem extends StatefulWidget {
  final Function handler;

  AddItem(this.handler);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _pickedDate;

  void _pressHandler() {
    if (_titleController.text.isEmpty ||
        _amountController.text.isEmpty ||
        double.tryParse(_amountController.text) == null ||
        double.tryParse(_amountController.text) <= 0 ||
        _pickedDate == null) {
      return;
    }

    widget.handler(
      title: _titleController.text,
      amount: double.parse(_amountController.text),
      date: _pickedDate,
    );

    Navigator.of(context).pop();
  }

  void _datePickerShowHandler() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((value) {
      setState(() {
        _pickedDate = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_pickedDate);
    return Card(
      child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TitleInput(_titleController, _pressHandler),
              AmountInput(_amountController, _pressHandler),
              DateSection(
                pickedDate: _pickedDate,
                handler: _datePickerShowHandler,
              ),
              AddButton(_pressHandler),
            ],
          )),
      elevation: 10,
    );
  }
}
