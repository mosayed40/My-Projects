import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NotesModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      await notesBox.add(note);

      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
