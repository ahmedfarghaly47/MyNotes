import 'package:flutter/material.dart';

class CustonIcon extends StatelessWidget {
  const CustonIcon({super.key, required this.icon});

  final IconData icon;

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
          icon,
          size: 28,
        ),
      ),
    );
  }
}
