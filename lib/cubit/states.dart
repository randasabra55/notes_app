abstract class NotesStates{}

class  NotesInitial extends NotesStates{}

class  NotesLoading extends NotesStates{}

class  NotesSuccess extends NotesStates{}

class  NotesError extends NotesStates{

  final String? error;
  NotesError(this.error);

}



