import 'package:flutter/material.dart';
import 'package:mynotes/widgets/add_note_button_sheet.dart';
import 'package:mynotes/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              });
        },
        backgroundColor: Colors.green.shade500,
        focusColor: Colors.white,
        child: Icon(
          Icons.add,
        ),
      ),
      body: NotesViewBody(),
    );
  }
}
