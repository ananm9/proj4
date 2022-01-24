import 'package:flutter/foundation.dart';

class Transaction {
  final String text;
  final DateTime date;
  final double amount;

  Transaction({required this.text, required this.date, required this.amount});
}
