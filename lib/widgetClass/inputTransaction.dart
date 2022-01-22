// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

class InputTransactionWidget extends StatelessWidget {
  Function addTransaction;

  InputTransactionWidget(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: _inputsWidget(addTransaction),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      ),
    );
  }
}

class _inputsWidget extends StatelessWidget {
  _inputsWidget(this.addTransaction);

  Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          decoration: InputDecoration(label: Text('Title')),
          controller: titleController,
        ),
        TextField(
          decoration: InputDecoration(label: Text('Amount')),
          controller: amountController,
        ),
        TextButton(
            onPressed: () {
              print(titleController.text);
              print(amountController.text);
              addTransaction(
                  titleController.text, double.parse(amountController.text));
            },
            child:
                Text('Add Transaction', style: TextStyle(color: Colors.purple)))
      ],
    );
  }
}
