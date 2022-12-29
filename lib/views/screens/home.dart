import 'package:flutter/material.dart';
import 'package:money_tracker/views/components/components.dart';
import 'package:money_tracker/views/screens/screens.dart';
import 'package:spline_chart/spline_chart.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:ffi';

import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class HomeScreen extends StatefulWidget {
   static String id = 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    final List<ChartData> chartData =<ChartData> [
      ChartData('Jan', 35),
      ChartData('Feb', 13),
      ChartData('March', 34),
      ChartData('April', 27),
      ChartData('May', 40)
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding ( padding: const EdgeInsets.all(20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 RectangularAvatar(avatarWidget: Image.asset('assets/images/avatar.png'),),
                 RectangularAvatar(avatarWidget: const Icon(AkarIcons.grid)),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(greetResp, style: kHelperTextStyle,),
                  const SizedBox(width: 5,),
                  const Text(', Stephen!', style : kHelperTextStyle),
                ],
              ),
              const SizedBox(height: 10,),
              Text('Last year\'s report 💵', style: kTitleTextStyle.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              const Center(
                child: chartToggle(),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  //Place holder chart for boiler plate
                  child: Container(
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                series: <ChartSeries>[
                    SplineSeries<ChartData, String>(
                    dataSource: chartData,
                    splineType: SplineType.cardinal,
                    cardinalSplineTension: 0.9,
                    xValueMapper: (ChartData month, _) => month.month,
                    yValueMapper: (ChartData amount, _) => amount.amount,
                )
                  ]
              )
        )
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: ()=> Get.toNamed(TransactionsScreen.id) ,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Text("👏"),
                      ),
                      title: Text('Well done, Stephen!',
                        style: kTitleTextStyle.copyWith( color: Colors.white, fontSize: 18),),
                      subtitle: Text('Your capital has a positive trend',
                        style: kHelperTextStyle.copyWith(color: Colors.grey, fontSize: 14)),
                    ),
                  ),
                ),
              ),
            ],
        ),),
      ),
    );
  }
}

class ChartData {
  ChartData(this.month,this.amount);
  final String month;
  final double? amount;
}


