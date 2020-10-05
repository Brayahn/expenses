import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final myItemController = TextEditingController();
  final myAmountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = myItemController.text;
    final enteredAmount = double.parse(myAmountController.text);
    addTx(myItemController.text, double.parse(myAmountController.text));

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Item'),
                  controller: myItemController,
                  // onSubmitted: (_) => submitData,
                  /*  onChanged: (val) {
                      myItem = val;
                    }, */
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Price',
                  ),
                  controller: myAmountController,
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => submitData,
                  /* onChanged: (val2) {
                      myAmount = val2; 
                    }, */
                ),
                FlatButton(
                  onPressed: submitData,
                  child: Text("Add"),
                  textColor: Colors.purple,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
