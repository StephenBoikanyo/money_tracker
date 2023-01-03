

class BankTransaction {
 final String? transactionId;
  final String? accountNumber;
  final String? date;
  final double? amount;
  final String? description;

   BankTransaction({ this.transactionId, this.accountNumber, this.date, this.amount, this.description});

  factory BankTransaction.fromJson(Map<String, dynamic> json) => BankTransaction(
      transactionId: json['transactionId'],
      accountNumber :json['accountNumber'],
      date: json['date'],
      amount: json['amount'],
      description: json['description']
  );


    Map<String,dynamic> toJson()=> {
    'transactionId' : transactionId,
    'accountNumber' : accountNumber,
    'date' : date,
    'amount': amount,
    'description' :description

  };



}