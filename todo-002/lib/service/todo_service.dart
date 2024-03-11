// ignore_for_file: constant_identifier_names, unused_field
// """" 는 연속된 문자열

import 'package:sqflite/sqflite.dart';

const TBL_TODO = "tbl_todolist";
const createTodoTable = """
  CREATE TABLE $TBL_TODO(
    id TEXT,
    sdate TEXT,
    stime TEXT,
    edate TEXT,
    etime TEXT,
    content TEXT,
    complete INTEGER,

  )
""";

class TodoService {
  late Database _database;

  onCreateTable(db, version) async {
    return db.execute(createTodoTable);
  }

  onUpgradeTable(db, oldVersion, newVersion) async {
    final batch = await db.batch();
    await batch.execute("DROP TABLE $TBL_TODO");
    await batch.execute(createTodoTable);
    await batch.commit();
  }
}
