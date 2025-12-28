import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  addNote(NotesModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      emit(AddNoteCubitSuccess());
      await notesBox.add(note);
    } catch (e) {
      AddNoteCubitFailure(errMessage: e.toString());
    }
  }
}
