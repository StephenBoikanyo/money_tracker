import 'package:flutter/material.dart';
import 'package:money_tracker/views/components/components.dart';
import  'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

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
              ColumnSuper(
                outerDistance: -100,
                  children: [
                    Container(
                      height: 500,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/bankcard.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [],
                      ),
                    )
                  ]
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transactions',style: kTitleTextStyle.copyWith(fontWeight: FontWeight.bold),),
                  const Icon(Icons.search),
                ],
              ),
              const SizedBox(height: 20,),
              //Transaction component
              ListTile(
                leading: CircleAvatar( backgroundColor: Colors.blueGrey,radius: 40,child: Icon(AkarIcons.circle),),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Money Transfer',style: kTitleTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                    Text('-R500',style: kTitleTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                   Text('April 18,2022'),
                    Text('11:02 AM')
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar( backgroundColor: Colors.blueGrey,radius: 40,child: Icon(AkarIcons.dribbble_fill),),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dribble',style: kTitleTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                    Text('-R500',style: kTitleTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('April 18,2022'),
                    Text('11:02 AM')
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar( backgroundColor: Colors.yellow,radius: 40,child: Icon(AkarIcons.utensils),),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Takeaway',style: kTitleTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                    Text('-R500',style: kTitleTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('April 18,2022'),
                    Text('11:02 AM')
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
