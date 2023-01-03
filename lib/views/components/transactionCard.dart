import 'package:flutter/material.dart';
import 'package:money_tracker/services/dateTimeHelper.dart';
import 'constants.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final IconData? transactionIcon;
  final String? title;
  final double? amount;
  final String? date;
  final String? time;

  const TransactionCard(
      {required this.title,
      required this.amount,
      required this.date,
      required this.time,
      required this.transactionIcon});

  @override
  Widget build(BuildContext context) {
    String? value_ = amount.toString();

    DateTimeHelper dateTimeHelper = new DateTimeHelper(date!);
   var _date =  dateTimeHelper.toDateTime(date!);

    String date_  = DateFormat.yMMMd().format(_date).toString();
    String? time_ = DateFormat.jm().format(_date).toString();

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
