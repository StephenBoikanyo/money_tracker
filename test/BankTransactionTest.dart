import 'package:flutter_test/flutter_test.dart';
import 'package:money_tracker/models/models.dart';

void main() {
  test('BankTransaction test', () {
    const transactionId = '123';
    const accountNumber = '456';
    const date = '2023-01-02 23:18:03.677';
    const amount = 100.0;
    const description = 'Test transaction';

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
