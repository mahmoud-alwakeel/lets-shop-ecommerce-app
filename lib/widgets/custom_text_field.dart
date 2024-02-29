import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.onChanged,
    required this.hintText,
    this.isObsecured = false,
    this.keyboardType = TextInputType.text,
  });
  Function(String)? onChanged;
  final String hintText;
  TextInputType keyboardType;
  bool isObsecured;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
