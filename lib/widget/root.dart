// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:proj4/models/Transaction.dart';
import 'package:proj4/widget/inputTransaction.dart';
import 'package:proj4/widget/transactionTool.dart';
import 'package:proj4/widget/transactions.dart';

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appBar')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(child: Text('Card 1'), color: Colors.amber),
            transactionToolWidget()
          ],
        ),
      ),
    );
  }
}
