import 'package:flutter/material.dart';
import 'package:mynotes/constants.dart';

class ButtonFullWidth extends StatelessWidget {
  const ButtonFullWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: textFieldColior, borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          'Add Note',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
