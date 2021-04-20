import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum;

      for (var data in recentTransactions) {
        if (data.date.day == weekDay.day &&
            data.date.month == weekDay.month &&
            data.date.year == weekDay.year) {
          totalSum += data.amount;
        }
      }

      return {'day': DateFormat.E(weekDay), 'amount': 9.99};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [Cont],
      ),
    );
  }
}
