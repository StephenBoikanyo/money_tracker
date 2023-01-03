import 'package:flutter/material.dart';
import 'package:money_tracker/services/DatabaseHelper.dart';
import 'package:money_tracker/views/components/components.dart';
import 'package:money_tracker/models/models.dart';


class TransactionsScreen extends StatefulWidget {
   static String id = 'TransactionScreen';

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
 
  
  @override
  void initState() {
    DatabaseHelper().createDummies();
    super.initState();
  }
  
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
              MoneyCard(balance: demoAcc.balance   ,cardNumber: demoAcc.accountNumber,),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transactions',style: kTitleTextStyle.copyWith(fontWeight: FontWeight.bold),),
                  const Icon(Icons.search),
                ],
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: FutureBuilder<List<BankTransaction>?>(
                  future: DatabaseHelper.getAllTransations(),
                  builder: (context, AsyncSnapshot<List<BankTransaction>?> snapshot){
                    if (snapshot.connectionState == ConnectionState.waiting){
                      return const CircularProgressIndicator();
                    }else if (snapshot.hasError){
                      return Center(child: Text(snapshot.error.toString(),style: kHeaderTextStyle,),);
                    }else if (snapshot.hasData){
                      if (snapshot.data !=null){
                        return SizedBox(
                          height: 350,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: totalTransactions.length,
                            itemBuilder: (BuildContext context, int index){
                              return TransactionCard(
                                  title: snapshot.data?[index].description,
                                  amount: snapshot.data?[index].amount,
                                  date: snapshot.data?[index].date,
                                  time: snapshot.data?[index].date,
                                  transactionIcon: AkarIcons.money);
                            },
                          ),
                        );
                      }
                    }
                    return const Text("Internal Error");
                  }
                  ,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentPage:currentPage ,),
    );
  }
}
