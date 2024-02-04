

import 'package:bloc/bloc.dart';
import 'package:note_app/cubit/states.dart';

class NotesCubit extends Cubit<NotesStates>{
  NotesCubit(): super(NotesInitial());

}
