import 'package:sqflite/sqflite.dart' as sql;


class SQLHelper{
  // Create table

  Future<void> createTable(sql.Database database) async{
    await database.execute(""" CREATE TABLE records(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)
    """);
  }
  //Create Database


  // Create item
  // Read table items
  // Update
  // Delete
  // Get all items
  // Get item
}