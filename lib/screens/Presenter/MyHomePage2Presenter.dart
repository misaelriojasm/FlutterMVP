import 'package:flutter_mvp/data/DatabaseProvider.dart';
import 'package:flutter_mvp/data/Notes/Note.dart';
import 'package:flutter_mvp/data/Notes/NotesDatabaseRepository.dart';
import 'package:flutter_mvp/screens/Presenter/IMyHomePage2.dart';

class MyHomePage2Presenter{
  IMyHomePage2Contract _view;
  NotesDatabaseRepository _notesRepository;

  MyHomePage2Presenter(this._view){
    final databaseProvider = DatabaseProvider.get;
    _notesRepository = NotesDatabaseRepository(databaseProvider);
  }
 
  void insert(Note note) async {
    // row to insert

    Note id = await _notesRepository.insert(note);
    List<Note> asd = await _notesRepository.getNotes();

    List<Note> notes = [];
    notes.add(id);
    print("note::: ");
    print(asd);


    _view.onLoadNotes(notes);
  }
}