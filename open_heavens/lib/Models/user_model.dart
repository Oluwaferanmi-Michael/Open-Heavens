import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:sqflite/sqflite.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {

  @HiveField(0)
  int? id;
  String? name;

  UserModel({
    this.id,
    this.name
  });

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'name' : name
      };
  }


  @override
  String toString() {
    return 'UserModel(id: $id, name: $name)';
  }

}