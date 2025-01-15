import 'package:flutter/material.dart';
import 'package:mynotes/constants.dart';
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: buttomSheetColor,
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              });
        },
        backgroundColor: primaryColor,
        focusColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: NotesViewBody(),
    );
  }
}
