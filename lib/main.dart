import 'package:flutter/material.dart';
import 'package:mynotes/global.dart';
import 'package:mynotes/views/notes_view.dart';

void main() {
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
