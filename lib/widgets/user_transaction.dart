import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

// ignore: camel_case_types
class userTransaction extends StatefulWidget {
  @override
  _userTransactionState createState() => _userTransactionState();
}

// ignore: camel_case_types
class _userTransactionState extends State<userTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      title: 'Food',
      date: DateTime.now(),
      amount: 230,
    ),
    Transaction(
      id: "t2",
      title: 'Shoes',
      date: DateTime.now(),
      amount: 540,
    )
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTX = Transaction(
      title: txtitle,
      amount: txamount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTX);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          NewTransaction(_addNewTransaction),
          TransactionList(_userTransactions),
        ],
      ),
    );
  }
}
