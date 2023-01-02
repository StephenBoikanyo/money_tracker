import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:money_tracker/models/BankTransaction.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbname = 'transaction.db';

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbname),
        onCreate: (db, version) async => await db.execute(
            '''
        CREATE TABLE bank_transactions (
        transactionId TEXT PRIMARY KEY,
        accountNumber TEXT,
        date TEXT,
        amount REAL,
        description TEXT
            )
         '''
        ), version: _version);
  }

  static Future<int> addBankTransaction(BankTransaction transaction) async {
    final db = await _getDB();
    return await db.insert('BankTransaction', BankTransaction().toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateBankTransaction(BankTransaction transaction) async {
    final db = await _getDB();
    return await db.update("Bank Transaction", BankTransaction().toJson(),
        where: 'transactionId = ?',
        whereArgs: [BankTransaction().transactionId]);
  }

  static Future<int> deleteBankTransaction(BankTransaction transaction) async {
    final db = await _getDB();
    return await db.delete("Bank Transaction",
        where: 'transactionId = ?',
        whereArgs: [BankTransaction().transactionId]);
  }

  static Future<List<BankTransaction>?> getAllTransations() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("BankTransaction");

    if (maps.isEmpty) {
      return null;
    }
    return List.generate(
        maps.length, (index) => BankTransaction.fromJson(maps[index]));
  }

  //function for dummy data

  await db.transaction((txn) async {
  for (final transaction in transactions) {
  await txn.insert(
  'transactions',
  transaction.toMap(),
  conflictAlgorithm: ConflictAlgorithm.replace,
  );
  }
  });




}


