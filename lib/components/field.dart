import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final String text;
  final String placeholder;
  final IconData icon;
  final TextInputType type;
  final TextEditingController? controller;
  final int? maxLine;

  final bool isPassword;
  final bool isObscured;
  final VoidCallback? onToggleVisibility;

  const MyField({
    super.key,
    required this.text,
    required this.placeholder,
    required this.icon,
    required this.type,
    this.controller,
    this.maxLine,
    this.isPassword = false,
    this.isObscured = false,
    this.onToggleVisibility,
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
        TextField(
          maxLines: isPassword ? 1 : maxLine,
          controller: controller,
          keyboardType: type,
          obscureText: isPassword ? isObscured : false,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: TextStyle(color: Colors.grey[400]),
            icon: Icon(icon, color: Colors.grey),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      isObscured
                          ? Icons.visibility_off_sharp
                          : Icons.visibility_sharp,
                      color: Colors.grey,
                    ),
                    onPressed: onToggleVisibility,
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Colors.yellow),
            ),
          ),
        ),
      ],
    );
  }
}
