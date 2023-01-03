import 'package:money_tracker/services/ChartHelper.dart';

import 'models.dart';
import 'ChartData.dart';
import 'package:money_tracker/services/services.dart';

BankAccount demoAcc = BankAccount('34562', 'Stephen', 2000);
var date = '';
ChartHelper chartHelper = ChartHelper(date);


List<BankTransaction> totalTransactions = [
  BankTransaction(transactionId: 'tx1',  accountNumber  :demoAcc.accountNumber, date: '2023-01-02 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx2',  accountNumber  :demoAcc.accountNumber,date: '2023-01-02 23:18:03.677', amount:3000.00, description:  'Trading'),
  BankTransaction(transactionId:'tx3', accountNumber  : demoAcc.accountNumber,date:'2023-01-02 23:18:03.677', amount:4000.00,  description: 'Investments'),
  BankTransaction(transactionId:'tx4',  accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:6000.00,  description: 'Tax rebate'),
  BankTransaction(transactionId:'tx5',  accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677',amount: 3000.00,  description: 'Elon Musk'),
  BankTransaction(transactionId:'tx6',  accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:3000.00,  description: 'Elon Musk'),
  BankTransaction(transactionId:'tx7',  accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-200.00,  description: 'Groceries'),
  BankTransaction(transactionId:'tx8', accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-5600.00,  description: 'Rent'),
  BankTransaction(transactionId:'tx9', accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-150.00,  description: 'MR D'),
  BankTransaction(transactionId:'tx10', accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-69.00,  description: 'Uber'),
  BankTransaction(transactionId:'tx11', accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-75.00,  description: 'Charity'),
  BankTransaction(transactionId:'tx12',accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-340.00,  description: 'Night Out'),
  BankTransaction(transactionId:'tx13', accountNumber  :demoAcc.accountNumber,date: '2023-01-02 23:18:03.677',amount: -2500.00,  description: 'Loan'),
  BankTransaction(transactionId:'tx14', accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:150.00,  description: 'Lotto '),
  BankTransaction(transactionId:'tx15', accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-69.00,  description: 'Bolt'),
  BankTransaction(transactionId:'tx16', accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-75.00,  description: 'Church Donation'),
  BankTransaction(transactionId:'tx17',accountNumber  :demoAcc.accountNumber, date:'2023-01-02 23:18:03.677', amount:-340.00,  description: 'Petrol'),
  BankTransaction(transactionId:'tx18', accountNumber  :demoAcc.accountNumber,date: '2023-01-02 23:18:03.677',amount: -250.00,  description: 'Electricty'),
  BankTransaction(transactionId:'tx19',  accountNumber  :demoAcc.accountNumber,date:'2023-01-02 23:18:03.677', amount:3000.00, description:  'Consulting Business'),
  BankTransaction(transactionId:'tx20', accountNumber  : demoAcc.accountNumber,date: '2023-01-02 23:18:03.677', amount:4000.00,  description: 'TV sold'),

  BankTransaction(transactionId: 'tx21',  accountNumber  :demoAcc.accountNumber, date: '2022-01-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx22',  accountNumber  :demoAcc.accountNumber,date: '2022-01-01 23:18:03.677', amount:3000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx23',  accountNumber  :demoAcc.accountNumber, date: '2022-02-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx24',  accountNumber  :demoAcc.accountNumber,date: '2022-02-01 23:18:03.677', amount:4000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx25',  accountNumber  :demoAcc.accountNumber, date: '2022-03-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx26',  accountNumber  :demoAcc.accountNumber,date: '2022-03-03 23:18:03.677', amount:5000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx27',  accountNumber  :demoAcc.accountNumber, date: '2022-04-02 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx28',  accountNumber  :demoAcc.accountNumber,date: '2022-04-04 23:18:03.677', amount:6000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx29',  accountNumber  :demoAcc.accountNumber, date: '2022-05-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx30',  accountNumber  :demoAcc.accountNumber,date: '2022-05-05 23:18:03.677', amount:7000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx31',  accountNumber  :demoAcc.accountNumber, date: '2022-06-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx32',  accountNumber  :demoAcc.accountNumber,date: '2022-06-06 23:18:03.677', amount:8000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx33',  accountNumber  :demoAcc.accountNumber, date: '2022-07-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx34',  accountNumber  :demoAcc.accountNumber,date: '2022-07-07 23:18:03.677', amount:9000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx35',  accountNumber  :demoAcc.accountNumber, date: '2022-08-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx36',  accountNumber  :demoAcc.accountNumber,date: '2022-08-08 23:18:03.677', amount:9888.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx37',  accountNumber  :demoAcc.accountNumber, date: '2022-09-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx38',  accountNumber  :demoAcc.accountNumber,date: '2022-09-06 23:18:03.677', amount:10000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx39',  accountNumber  :demoAcc.accountNumber, date: '2022-10-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx39',  accountNumber  :demoAcc.accountNumber,date: '2022-10-07 23:18:03.677', amount:11000.00, description:  'Trading'),

  BankTransaction(transactionId: 'tx40',  accountNumber  :demoAcc.accountNumber, date: '2022-11-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx40',  accountNumber  :demoAcc.accountNumber,date: '2022-11-08 23:18:03.677', amount:12000.00, description:  'Trading'),


  BankTransaction(transactionId: 'tx40',  accountNumber  :demoAcc.accountNumber, date: '2022-12-01 23:18:03.677', amount:  10000.00, description:  'Salary'),
  BankTransaction(transactionId:'tx40',  accountNumber  :demoAcc.accountNumber,date: '2022-12-08 23:18:03.677', amount:13000.00, description:  'Trading'),



];


final List<ChartData> income_ =<ChartData> [
  ChartData('Jan 21', chartHelper.months[0] ),
  ChartData('Feb 21', chartHelper.months[1]),
  ChartData('Mar 21', chartHelper.months[2]),
  ChartData('Apr 21', chartHelper.months[3]),
  ChartData('May 21', chartHelper.months[4]),
  ChartData('Jun 21', chartHelper.months[5]),
  ChartData('Jul 21', chartHelper.months[6]),
  ChartData('Aug 21', chartHelper.months[7]),
  ChartData('Sep 21', chartHelper.months[8]),
  ChartData('Oct 21', chartHelper.months[9]),
  ChartData('Nov 21', chartHelper.months[10]),
  ChartData('Dec 21', chartHelper.months[11]),

];

final List<ChartData> income =<ChartData> [
  ChartData('Jan 21', chartHelper.months[0] ),
  ChartData('Feb 21', chartHelper.months[1]),
  ChartData('Mar 21', chartHelper.months[2]),
  ChartData('Apr 21', chartHelper.months[3]),
  ChartData('May 21', chartHelper.months[4]),
  ChartData('Jun 21', chartHelper.months[5]),
  ChartData('Jul 21', chartHelper.months[6]),
  ChartData('Aug 21', chartHelper.months[7]),
  ChartData('Sep 21', chartHelper.months[8]),
  ChartData('Oct 21', chartHelper.months[9]),
  ChartData('Nov 21', chartHelper.months[10]),
  ChartData('Dec 21', chartHelper.months[11]),

];


final List<ChartData> expenses = <ChartData>
[ChartData('Jan 21', 5200),
  ChartData('Feb 21', 6400),
  ChartData('Mar 21', 7000),
  ChartData('Apr 21', 100000),
  ChartData('May 21', 80000),
  ChartData('Jun 21', 16000),
  ChartData('Jul 21', 23000),
  ChartData('Aug 21', 5500),
  ChartData('Sep 21', 8000)
];

