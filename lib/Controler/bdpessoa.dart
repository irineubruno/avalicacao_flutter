import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSQLite {
  Future<Database> openConnection() async {

    final databasePath = await getDatabasesPath();
    final databasePathFinal = join(databasePath, 'ACADEMIA');
    return await openDatabase(
        databasePathFinal,
        version: 1,
        onCreate: (Database db, int version){
          final batch = db.batch();
          batch.execute('CREATE TABLE pessoas('
              'id INTEGER PRIMARY KEY AUTOINCREMENT, '
              'cpf TEXT,'
              'nome TEXT,'
              'idade TEXT,'
              'altura TEXT,'
              'peso TEXT)');
          batch.commit();
        }
    );
  }
}