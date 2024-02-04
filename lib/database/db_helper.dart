// import 'package:sqflite/sqflite.dart';
//
// class SqlHelper{
//   static Future<void> createTable(Database database)async {
//     await database.execute(
//       'CREATE TABLE data '
//           '('
//           'id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,'
//           'title TEXT,'
//           'note TEXT,'
//           'createAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP'
//           ')'
//     );
//   }
//
//   static Future db() async {
//     return openDatabase(
//       'randa.dp',
//       version: 1,
//       onCreate: (Database database,int version) async {
//         await createTable(database);
//       }
//     );
//   }
//
//   static Future<int> createData(String title,String note)async {
//     final db=SqlHelper.db();
//     final data={'title':title,'note':note};
//     final id= await db.insert('data',data);
//     return id;
//   }
// }