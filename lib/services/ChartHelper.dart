import 'DateTimeHelper.dart';
import 'package:money_tracker/models/models.dart';

class ChartHelper extends DateTimeHelper {
  ChartHelper(super.date);

  List<double> months = [];

  //For Mock Chart Data ..... Would use getAll() from DB to plot
  List<double> ChartIncomeTotals(List<BankTransaction> totalTransactions) {
    double janIncome = 0;
    double febIncome = 0;
    double marIncome = 0;
    double aprIncome = 0;
    double mayIncome = 0;
    double juneIncome = 0;
    double julIncome = 0;
    double augIncome = 0;
    double sepIncome = 0;
    double octIncome = 0;
    double novIncome = 0;
    double decIncome = 0;
    for (int i = 0; i < totalTransactions.length; i++) {
      BankTransaction transaction = totalTransactions[i];
      var date = toDateTime(transaction.date.toString());
      if (date.month == 1 && date.year == 2022) {
        janIncome += transaction.amount!;

      }
      if (date.month == 2 && date.year == 2022) {
        febIncome += transaction.amount!;
      }
      if (date.month == 3 && date.year == 2022) {
        marIncome += transaction.amount!;
      }
      if (date.month == 4 && date.year == 2022) {
        aprIncome += transaction.amount!;
      }
      if (date.month == 5 && date.year == 2022) {
        mayIncome += transaction.amount!;
      }
      if (date.month == 6 && date.year == 2022) {
        juneIncome += transaction.amount!;
      }
      if (date.month == 7 && date.year == 2022) {
        julIncome += transaction.amount!;
      }
      if (date.month == 8 && date.year == 2022) {
        augIncome += transaction.amount!;
      }
      if (date.month == 9 && date.year == 2022) {
        sepIncome += transaction.amount!;
      }
      if (date.month == 10 && date.year == 2022) {
        octIncome += transaction.amount!;
      }
      if (date.month == 11 && date.year == 2022) {
        novIncome += transaction.amount!;
      }
      if (date.month == 12 && date.year == 2022) {
        decIncome += transaction.amount!;
      }
    }
    months.add(janIncome);
    months.add(febIncome);
    months.add(marIncome);
    months.add(aprIncome);
    months.add(mayIncome);
    months.add(juneIncome);
    months.add(julIncome);
    months.add(augIncome);
    months.add(sepIncome);
    months.add(octIncome);
    months.add(novIncome);
    months.add(decIncome);
    return months;
  }


}






