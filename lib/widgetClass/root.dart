// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:proj4/normalClass/Transaction.dart';
import 'package:proj4/widgetClass/inputTransaction.dart';
import 'package:proj4/widgetClass/transactions.dart';

class RootWidget extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(text: 'AAAAAAAAAAA', date: DateTime.now(), amount: 1.1),
    Transaction(text: 'BBBBBBBBB', date: DateTime.now(), amount: 2.2)
  ];

  void addTransaction(String title, double amounts) {
    var newTx = Transaction(text: title, amount: amounts, date: DateTime.now());
    transactions.add(newTx);
    print(transactions.map((tx) => tx.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appBar')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(child: Text('Card 1'), color: Colors.amber),
          InputTransactionWidget(addTransaction),
          TransactionsWidget(transactions)
        ],
      ),
    );
  }
}
