import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(myApp());

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expenses App",
      home: myHome(),
    );
  }
}

// ignore: camel_case_types
class myHome extends StatelessWidget {
/*   String myItem;
  String myAmount; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Brian's Expense App :)",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.lightBlue,
              child: Text(
                "Add New Expense",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            userTransaction(),
          ],
        ),
      ),
    );
  }
}
