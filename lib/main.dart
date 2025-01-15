import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mynotes/constants.dart';
import 'package:mynotes/models/note_model.dart';
import 'package:mynotes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(notesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const MyNotes());
}

class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Notes',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: backColor,
        fontFamily: 'Poppins',
      ),
      home: NotesView(),
    );
  }
}
