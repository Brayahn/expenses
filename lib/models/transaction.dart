import 'package:flutter/foundation.dart';

class Transaction {
  String title;
  String id;
  double amount;
  DateTime date;

  Transaction(
      {@required this.title,
      @required this.id,
      @required this.amount,
      @required this.date});
}
