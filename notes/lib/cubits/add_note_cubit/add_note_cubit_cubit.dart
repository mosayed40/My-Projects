import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NotesModel note) {}
}
