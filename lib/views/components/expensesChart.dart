import 'package:flutter/material.dart';
import 'package:money_tracker/models/models.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ExpensesChart extends StatelessWidget {

  late final List<ChartData> expenses ;

  ExpensesChart({required this.expenses});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <ChartSeries>[
                SplineSeries<ChartData, String>(
                  dataSource: expenses,
                  splineType: SplineType.cardinal,
                  cardinalSplineTension: 0.9,
                  xValueMapper: (ChartData month, _) => month.month,
                  yValueMapper: (ChartData amount, _) => amount.amount,
                )
              ]
          )
      ),
    );
  }
}



