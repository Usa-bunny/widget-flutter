import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const MyHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.yellow[200],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 42, color: Colors.yellow[700]),
        ),
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.yellow[700],
          ),
        ),
        SizedBox(height: 6),
        Text(
          subtitle,
          style: TextStyle(fontSize: 14, color: Colors.yellow[700]),
        ),
      ],
    );
  }
}
