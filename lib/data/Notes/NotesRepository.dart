import 'package:flutter_mvp/data/DatabaseProvider.dart';
import 'package:flutter_mvp/data/Notes/Note.dart';

abstract class NotesRepository{
  DatabaseProvider databaseProvider;
  Future<Note> insert(Note note);
  Future<Note> update(Note note);
  Future<Note> delete(Note note);
  Future<List<Note>> getNotes();
}