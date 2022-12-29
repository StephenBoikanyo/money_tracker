import 'package:flutter/material.dart';
import 'package:money_tracker/services/services.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IncomeChart extends StatelessWidget {

  late final List<ChartData> income ;

  IncomeChart({required this.income});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: Container(
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  series: <ChartSeries>[
                    SplineSeries<ChartData, String>(
                      dataSource: income,
                      splineType: SplineType.cardinal,
                      cardinalSplineTension: 0.9,
                      xValueMapper: (ChartData month, _) => month.month,
                      yValueMapper: (ChartData amount, _) => amount.amount,
                    )
                  ]
              )
          )
      ),
    );
  }
}