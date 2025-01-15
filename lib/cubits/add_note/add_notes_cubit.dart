import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:mynotes/constants.dart';
import 'package:mynotes/models/note_model.dart';

part 'add_notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel note) async {
    emit(NotesLoadin());
    try {
      var notebox = Hive.box<NoteModel>(notesBox);
      await notebox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailure(error: e.toString()));
    }
  }
}
