import 'package:flutter/material.dart';
import 'package:mynotes/constants.dart';

class CustomInputTextField extends StatelessWidget {
  const CustomInputTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.obscureText = false,
      this.onSaved});

  final String hintText;
  final int maxLines;
  final bool obscureText;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      // validator: (value) =>
      //     value == null || value.isEmpty ? 'Enter $hintText' : null,
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Enter $hintText';
      //   }
      // },
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Enter $hintText';
        }
        return null;
      },
      cursorColor: textFieldColior,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(textFieldColior),
        hintText: hintText,
        hintStyle: TextStyle(color: textFieldColior),
      ),
      style: TextStyle(color: Colors.white),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
