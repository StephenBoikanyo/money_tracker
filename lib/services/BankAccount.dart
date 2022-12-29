

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount > balance) {
      throw new Exception('Insufficient balance');
    }
    balance -= amount;
  }
}