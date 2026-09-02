import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  final String text;
  final String? selectedValue;
  final String placeholder;
  final IconData icon;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const MyDropdown({
    super.key,
    required this.text,
    required this.selectedValue,
    required this.placeholder,
    required this.icon,
    required this.items,
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
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          initialValue: selectedValue,
          hint: Text(
            placeholder,
            style: TextStyle(color: Colors.grey[400], fontSize: 14),
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Colors.yellow),
            ),
          ),
          items: items
              .map(
                (String item) =>
                    DropdownMenuItem<String>(value: item, child: Text(item)),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
