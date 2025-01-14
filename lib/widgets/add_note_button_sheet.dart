import 'package:flutter/material.dart';
import 'package:mynotes/widgets/button_full_width.dart';
import 'package:mynotes/widgets/custom_input_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomInputTextField(
              hintText: 'Title',
            ),
            const SizedBox(height: 16),
            CustomInputTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(height: 30),
            ButtonFullWidth(),
          ],
        ),
      ),
    );
  }
}
