import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial()) {
    Hive.box<NotesModel>(kNotesBox).listenable().addListener(() {
      fetchAllNotes();
    });
  }

  void fetchAllNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
    emit(NotesLoaded(notesBox.values.toList()));
  }
}
