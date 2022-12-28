import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final IconData? transactionIcon;
  final String? title;
  final int? amount;
  final DateTime? date;
  final DateTime? time;

  const TransactionCard(
      {required this.title,
      required this.amount,
      required this.date,
      required this.time,
      required this.transactionIcon});

  @override
  Widget build(BuildContext context) {
    String? value_ = amount.toString();

    String date_  = DateFormat.yMMMd().format(DateTime.now());
    String? time_ = DateFormat.jm().format(DateTime.now());

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 40,
        child: Icon(transactionIcon),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title',
              style: kTitleTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.bold)),
          Text('R $value_ ',
              style: kTitleTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(date_), Text(time_)],
      ),
    );
  }
}
