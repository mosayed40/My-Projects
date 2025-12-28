part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

class AddNoteInitial extends AddNoteCubitState {}

class AddNoteLoading extends AddNoteCubitState {}

class AddNoteSuccess extends AddNoteCubitState {}

class AddNoteFailure extends AddNoteCubitState {
  final String errMessage;

  AddNoteFailure({required this.errMessage});
}
