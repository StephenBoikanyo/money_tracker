import '../models/models.dart';

class TransactionService {

  late List<BankTransaction> transactions;

  late double totalDeposit = 0;
  late double totalWithdrawal = 0;


  double totalDeposits(transactions) {
    for (int i = 0; i < transactions.length; i++) {
      if (transactions[i].amount >= 0) {
        totalDeposit += transactions[i].amount;
      }
    }
    return totalDeposit;
  }


  double totalWithdrawals(transactions) {
    for (int i = 0; i < transactions.length; i++) {
      if (transactions[i].amount <= 0) {
        totalWithdrawal += transactions[i].amount;
      }
    }
    return totalWithdrawal;
  }

}
