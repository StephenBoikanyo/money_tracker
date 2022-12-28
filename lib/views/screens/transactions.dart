import 'package:flutter/material.dart';
import 'package:money_tracker/views/components/components.dart';
import 'package:akar_icons_flutter/akar_icons_flutter.dart';


class TransactionsScreen extends StatefulWidget {
   static String id = 'TransactionScreen';

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My cards',style: kHeaderTextStyle.copyWith(fontSize: 30,fontWeight:FontWeight.bold),),
              MoneyCard(balance: 6.566,cardNumber: '3456',),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transactions',style: kTitleTextStyle.copyWith(fontWeight: FontWeight.bold),),
                  const Icon(Icons.search),
                ],
              ),
              const SizedBox(height: 20,),
              //Transaction component
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TransactionCard(title: 'Youtube Primium', amount: 500, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.youtube_fill),
                      TransactionCard(title: 'Dribble', amount: 300, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.dribbble_fill),
                      TransactionCard(title: 'Twitter Blue', amount: 110, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.twitter_fill),
                      TransactionCard(title: 'LinkedIn Primium', amount: 700, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.linkedin_fill),

                      TransactionCard(title: 'Youtube Primium', amount: 500, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.youtube_fill),
                      TransactionCard(title: 'Dribble', amount: 300, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.dribbble_fill),
                      TransactionCard(title: 'Twitter Blue', amount: 110, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.twitter_fill),
                      TransactionCard(title: 'LinkedIn Primium', amount: 700, date: DateTime.now(), time: DateTime.now(), transactionIcon: AkarIcons.linkedin_fill)

                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
