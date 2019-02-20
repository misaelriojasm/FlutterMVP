import 'package:flutter_mvp/data/DatabaseProvider.dart';
import 'package:flutter_mvp/data/Notes/Note.dart';
import 'package:flutter_mvp/data/Notes/NoteDao.dart';
import 'package:flutter_mvp/data/Notes/NotesRepository.dart';

class NotesDatabaseRepository implements NotesRepository {

  final dao = NoteDao();

  @override
  DatabaseProvider databaseProvider;
  NotesDatabaseRepository(this.databaseProvider);

  @override
  Future<Note> insert(Note note) async {
    final db = await databaseProvider.db();
    int a = await db.insert(dao.tableName, dao.toMap(note));
    print("THISS::::");    
    print(a);
    print(note.ide);
    return note;
  }

  @override
  Future<Note> delete(Note note) async {
    final db = await databaseProvider.db();
    await db.delete(dao.tableName,
        where: dao.columnId + " = ?", whereArgs: [note.id]);
    return note;
  }

  @override
  Future<Note> update(Note note) async {
    final db = await databaseProvider.db();
    await db.update(dao.tableName, dao.toMap(note),
        where: dao.columnId + " = ?", whereArgs: [note.id]);
    return note;
  }

  @override
  Future<List<Note>> getNotes() async {
    final db = await databaseProvider.db();
    List<Map> maps = await db.query(dao.tableName);
    return dao.fromList(maps);
  }

}