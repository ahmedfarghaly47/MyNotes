import 'package:flutter/material.dart';
import 'package:mynotes/constants.dart';

class ButtonFullWidth extends StatelessWidget {
  const ButtonFullWidth({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: buttonColior, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            'Add Note',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
