part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteCubitLoading extends AddNoteCubitState {}

class AddNoteCubitSuccess extends AddNoteCubitState {}

class AddNoteCubitFailure extends AddNoteCubitState {
  final String errMessage;

  AddNoteCubitFailure({required this.errMessage});
}
