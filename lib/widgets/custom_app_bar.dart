import 'package:flutter/material.dart';
import 'package:mynotes/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Spacer(),
        CustonIcon(icon: icon),
      ],
    );
  }
}
