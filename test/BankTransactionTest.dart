import 'package:flutter_test/flutter_test.dart';
import 'package:money_tracker/models/models.dart';

void main() {
  test('BankTransaction test', () {
    final transactionId = '123';
    final accountNumber = '456';
    final date = '2023-01-02 23:18:03.677';
    final amount = 100.0;
    final description = 'Test transaction';

    final transaction = BankTransaction(
        transactionId: transactionId,
        accountNumber :accountNumber,
        date :date ,
        amount :amount,
        description :description);

    expect(transaction.transactionId, transactionId);
    expect(transaction.accountNumber, accountNumber);
    expect(transaction.date, date);
    expect(transaction.amount, amount);
    expect(transaction.description, description);
  });
}
