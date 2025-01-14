import 'package:flutter/material.dart';

class CustonSearchIcon extends StatelessWidget {
  const CustonSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
