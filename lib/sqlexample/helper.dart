import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  // Create table

  Future<void> createTable(sql.Database database) async {
    await database.execute(""" CREATE TABLE records(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)
    """);
  }

  //Create Database
  Future<sql.Database> createDatabase() async {
    return await sql.openDatabase(
      'spectrum.db',
      version: 1,
      onCreate: (sql.Database data, version) {
        createTable(data);
      },
    );
  }

// Create item
// Read table items
// Update
// Delete
// Get all items
// Get item
}
