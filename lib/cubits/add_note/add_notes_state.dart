part of 'add_notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoadin extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFailure extends NotesState {
  final String error;

  NotesFailure({required this.error});
}
