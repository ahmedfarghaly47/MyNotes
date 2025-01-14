import 'package:flutter/material.dart';
import 'package:mynotes/widgets/custom_app_bar.dart';
import 'package:mynotes/widgets/custom_input_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomInputTextField(
            hintText: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomInputTextField(
            hintText: 'Description',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
