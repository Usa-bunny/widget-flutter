import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  final String text;
  final String selectedValue;
  final List<String> options;
  final ValueChanged<String?> onChanged;

  const MyRadio({
    super.key,
    required this.text,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.yellow[700],
          ),
        ),
        SizedBox(height: 6),
        Row(
          children: options.map((option) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio<String>(
                  value: option,
                  // ignore: deprecated_member_use
                  groupValue: selectedValue,
                  activeColor: Colors.yellow[700],
                  // ignore: deprecated_member_use
                  onChanged: onChanged,
                ),
                Text(option, style: TextStyle(fontSize: 14)),
                SizedBox(width: 16),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
