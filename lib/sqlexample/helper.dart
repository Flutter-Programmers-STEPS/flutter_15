import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  // Create table

  static Future<void> createTable(sql.Database database) async {
    await database.execute(""" CREATE TABLE records(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)
    """);
  }

  //Create Database
  static Future<sql.Database> createDatabase() async {
    return await sql.openDatabase(
      'spectrum.db',
      version: 1,
      onCreate: (sql.Database data, version) {
        createTable(data);
      },
    );
  }

// Create item
  static Future<int> createItem(String? title, String? description) async {
    final database = await SQLHelper.createDatabase();

    final row = {'title': title, 'description': description};

    final rowId = await database.insert('records', row,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);

    return rowId;
  }

// Read table items

  static Future<List<Map<String, dynamic>>> readAllItems() async {
    final database = await SQLHelper.createDatabase();
    return database.query('records', orderBy: 'id');
  }

// Get all items

  static Future<List<Map<String, dynamic>>> getIndividualItem(int id) async {
    final database = await SQLHelper.createDatabase();
    return database.query('records', where: 'id=?', limit: 1, whereArgs: [id]);
  }

// Update

  static Future<int> updateRow(
      int? id, String? title, String? description) async {
    final database = await SQLHelper.createDatabase();
    final editingRow = {
      'title': title,
      'description': description,
      'createdAt': DateTime.now().toString()
    };

// update records set title='value', description='value', createdAt='TIME' where id=?;
    final editedRowID = database.update('records', editingRow, where: 'id=?');
    return editedRowID;
  }

// Delete

  static Future<void> deleteRow(int id) async {
    final database = await SQLHelper.createDatabase();
    await database.delete('records', where: 'id=?', whereArgs: [id]);
  }
// Get item
}
