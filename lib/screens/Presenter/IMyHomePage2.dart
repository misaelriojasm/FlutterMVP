import 'package:flutter_mvp/data/Notes/Note.dart';

abstract class IMyHomePage2Contract {
  void onLoadNotes(List<Note> notes);
  void onLoadNotesError();
}