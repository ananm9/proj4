// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Transaction.dart';

class TransactionElementWidget extends StatelessWidget {
  final Transaction tx;

  TransactionElementWidget(this.tx);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        _LeftPart(tx),
        _RightPart(tx),
      ],
    ));
  }
}

class _RightPart extends StatelessWidget {
  const _RightPart(this.tx);

  final Transaction tx;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            child: Text(tx.text,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold)),
            margin: EdgeInsets.only(top: 5, bottom: 5)),
        Text(DateFormat.yMMMd().format(tx.date),
            style: TextStyle(fontSize: 16, color: Colors.purple))
      ],
    );
  }
}

class _LeftPart extends StatelessWidget {
  const _LeftPart(this.tx);

  final Transaction tx;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text("\$" + tx.amount.toString(),
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold)),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.deepPurple)));
  }
}
