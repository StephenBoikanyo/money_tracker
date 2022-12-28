import  'package:flutter/material.dart';
import  'package:get/get.dart';
import  'package:sqflite/sqflite.dart';
import  'package:money_tracker/views/screens/screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context) =>HomeScreen(),
        TransactionsScreen.id:(context)=> TransactionsScreen()
      },
    );
  }
}

