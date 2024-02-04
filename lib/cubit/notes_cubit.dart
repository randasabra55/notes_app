

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubit/states.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates>{
  NotesCubit(): super(NotesInitial());


  addNote(NoteModel note) async {
    emit(NotesLoading());
    try {
      var notesBox=Hive.box('notes_box');
      await notesBox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesError(e.toString()));
    }

  }


}
