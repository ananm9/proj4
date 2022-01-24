import 'package:flutter/material.dart';
import 'package:proj4/models/Transaction.dart';
import 'package:proj4/widget/transactionElement.dart';

class TransactionsWidget extends StatelessWidget {
  List<Transaction> txs;

  TransactionsWidget(this.txs);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: txs
            .map((tx) => Card(child: TransactionElementWidget(tx)))
            .toList());
  }
}
