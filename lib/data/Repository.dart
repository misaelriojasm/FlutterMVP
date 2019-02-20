import 'package:flutter_mvp/data/DatabaseProvider.dart';

abstract class Repository {
  DatabaseProvider databaseProvider;
  Future<dynamic> insert(dynamic t);

  Future<dynamic> update(dynamic t);
  Future<dynamic> delete(dynamic t);
  Future<List<dynamic>> getNotes();
}