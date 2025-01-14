import 'package:flutter/material.dart';
import 'package:mynotes/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'My Notes',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Spacer(),
        CustonSearchIcon(),
      ],
    );
  }
}
