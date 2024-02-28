import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase{
  late Database database;
  openDB() async{
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'demo.db');
  Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT)');
    });
  }
  writeRec(int id, String name) async {
  int id1 = await database.rawInsert(
      'INSERT INTO Test(id, name) VALUES($id, "$name")'
  );

  print('inserted1: $id1');
}
  
}
