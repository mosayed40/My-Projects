import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotesModel>? notesData;

  void fetchAllNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
    notesData = notesBox.values.toList();
  }
}
