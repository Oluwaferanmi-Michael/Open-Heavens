// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import '../Models/user_model.dart';

  
// void userDatabaseHelper() async {

// // SQLite database initialization
//   final database = openDatabase(
//     join( await getDatabasesPath(), 'userDatabase.db'),

//   onCreate: (db, version) {
//     return db.execute('CREATE TABLE user(id INTEGER PRIMARY KEY, name TEXT)', );
//   },
//   version: 1
//   );



// //  insert new user
//   Future<void> insertUser(UserModel user) async{
//     final userdb = await database;

//     await userdb.insert(
//       'user', UserModel().toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace
//     );
//   }
// }