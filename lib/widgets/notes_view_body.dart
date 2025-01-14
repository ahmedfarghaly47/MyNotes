import 'package:flutter/material.dart';
import 'package:mynotes/widgets/custom_app_bar.dart';
import 'package:mynotes/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: Column(
        children: [
          // const SizedBox(
          //   height: 50,
          // ),
          CustomAppBar(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
