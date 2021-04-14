import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  String titleInput;
  String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onChanged: (val) {
                titleInput = val;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              onChanged: (val) {
                amountInput = val;
              },
            ),
            TextButton(
              onPressed: () {},
              child: Text('Add Transaction'),
              style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.purple)),
            )
          ],
        ),
      ),
    );
  }
}
