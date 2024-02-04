import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubit/notes_cubit.dart';
import 'package:note_app/home.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize :Size(200, 650),
      splitScreenMode :true,
      minTextAdapt :true,
      child: MultiBlocProvider(

        providers: [
          BlocProvider(create: (context)=>NotesCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark
          ),
          home: NotesViews(),
        ),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize :Size(200, 650),
//       splitScreenMode :true,
//       minTextAdapt :true,
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           useMaterial3: false
//         ),
//         home: HomeScreen(),
//       ),
//     );
//   }
// }


