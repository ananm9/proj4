import 'package:flutter/material.dart';
import 'package:proj4/models/Transaction.dart';
import 'package:proj4/widget/transactions.dart';

import 'inputTransaction.dart';

class transactionToolWidget extends StatefulWidget {
  const transactionToolWidget({Key? key}) : super(key: key);

  @override
  _transactionToolWidgetState createState() => _transactionToolWidgetState();
}

class _transactionToolWidgetState extends State<transactionToolWidget> {
  List<Transaction> transactions = [
    Transaction(text: 'cccccccccc', date: DateTime.now(), amount: 1.1),
    Transaction(text: 'BBBBBBBBB', date: DateTime.now(), amount: 2.2),
    Transaction(text: 'AAAAAAAAAAA', date: DateTime.now(), amount: 1.1),
    Transaction(text: 'BBBBBBBBB', date: DateTime.now(), amount: 2.2),
    Transaction(text: 'AAAAAAAAAAA', date: DateTime.now(), amount: 1.1),
    Transaction(text: 'BBBBBBBBB', date: DateTime.now(), amount: 2.2),
    Transaction(text: 'AAAAAAAAAAA', date: DateTime.now(), amount: 1.1),
    Transaction(text: 'BBBBBBBBB', date: DateTime.now(), amount: 2.2),
    Transaction(text: 'AAAAAAAAAAA', date: DateTime.now(), amount: 1.1),
    Transaction(text: 'BBBBBBBBB', date: DateTime.now(), amount: 2.2)
  ];

  void addTransaction(String title, double amounts) {
    var newTx = Transaction(text: title, amount: amounts, date: DateTime.now());
    setState(() {
      transactions.add(newTx);
    });
    print(transactions.map((tx) => tx.text));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputTransactionWidget(addTransaction),
        TransactionsWidget(transactions)
      ],
    );
  }
}
