import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:money_tracker/models/models.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbname = 'transaction.db';

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbname),
        onCreate: (db, version) async => await db.execute(
            "CREATE TABLE BankTransactions(transactionId TEXT PRIMARY KEY,accountNumber TEXT,date TEXT,amount REAL,description TEXT);"
        ), version: _version);
  }

  static Future<int> addBankTransaction(BankTransaction transaction) async {
    final db = await _getDB();
    return await db.insert('BankTransactions', BankTransaction().toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateBankTransaction(BankTransaction transaction) async {
    final db = await _getDB();
    return await db.update("BankTransactions", BankTransaction().toJson(),
        where: 'transactionId = ?',
        whereArgs: [BankTransaction().transactionId]);
  }

  static Future<int> deleteBankTransaction(BankTransaction transaction) async {
    final db = await _getDB();
    return await db.delete("BankTransactions",
        where: 'transactionId = ?',
        whereArgs: [BankTransaction().transactionId]);
  }

  static Future<List<BankTransaction>?> getAllTransations() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("BankTransactions");

    if (maps.isEmpty) {
      return null;
    }
    return List.generate(
        maps.length, (index) => BankTransaction.fromJson(maps[index]));
  }


  // Insert the BankTransaction objects into the database.
  void createDummies() async{
    final db = await _getDB();
    await db.transaction((txn) async {
      for (final transaction in totalTransactions) {
        await txn.insert(
          'BankTransactions',
          transaction.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
  }

}


