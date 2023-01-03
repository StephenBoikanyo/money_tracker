import  'package:flutter/material.dart';
import  'package:get/get.dart';
import 'package:money_tracker/models/models.dart';
import 'package:money_tracker/services/ChartHelper.dart';
import  'package:money_tracker/views/screens/screens.dart';


void main() {
  runApp(const MyApp());
  ChartHelper chartHelper = ChartHelper(date);
  chartHelper.ChartIncomeTotals(totalTransactions);
  TransactionHelper transactionService = TransactionHelper();
  double withdrawalsmade = transactionService.totalWithdrawals(totalTransactions);
  double depositsmade = transactionService.totalDeposits(totalTransactions);
  demoAcc.withdraw(withdrawalsmade);
  demoAcc.deposit(depositsmade);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomeScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id:(context) =>HomeScreen(),
        TransactionsScreen.id:(context)=> TransactionsScreen()
      },
    );
  }
}

