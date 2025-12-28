part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NotesModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure({required this.errMessage});
}
