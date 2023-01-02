import 'package:flutter/material.dart';
import 'package:money_tracker/views/components/components.dart';
import 'package:money_tracker/models/models.dart';


class TransactionsScreen extends StatefulWidget {
   static String id = 'TransactionScreen';

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {

  @override
  Widget build(BuildContext context) {
    int currentPage = 2;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My cards',style: kHeaderTextStyle.copyWith(fontSize: 30,fontWeight:FontWeight.bold),),
              InkWell(onTap:(){
                print(DateTime.now());

              },child: MoneyCard(balance: demoAcc.balance   ,cardNumber: '${demoAcc.accountNumber}',)),
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
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: totalTransactions.length,
                    itemBuilder: (BuildContext context, int index){
                      return TransactionCard(title: totalTransactions[index].description,
                          amount: totalTransactions[index].amount,
                          date: totalTransactions[index].date,
                          time: totalTransactions[index].date,
                          transactionIcon: AkarIcons.money);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentPage:currentPage ,),
    );
  }
}
