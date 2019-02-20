import 'package:flutter_mvp/data/Dao.dart';
import 'package:flutter_mvp/data/Notes/Note.dart';

class NoteDao implements Dao<Note> {
  final tableName = 'notes';
  final columnId = 'id';
  final columnIde = 'ide';
  final _columnTitle = 'title';
  final _columnDescription = 'description';

  @override
  String get createTableQuery =>
      "CREATE TABLE $tableName($columnId INT PRIMARY KEY,"
          " $columnIde TEXT"
          " $_columnTitle TEXT,"
          " $_columnDescription TEXT)";

  @override

  Note fromMap(Map<String, dynamic> query) {
    Note note = new Note(query[columnIde],query[_columnTitle],query[_columnDescription]);
    return note;
  }

  @override
  Map<String, dynamic> toMap(Note object) {
    return <String, dynamic>{
      _columnTitle: object.title,
      _columnDescription: object.description
    };
  }

  @override
  List<Note> fromList(List<Map<String,dynamic>> query) {
    List<Note> notes = List<Note>();
    for (Map map in query) {
      notes.add(fromMap(map));
    }
    return notes;
  }
}