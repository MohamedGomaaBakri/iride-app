import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          label: Text(
            labelText,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(33),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(33),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(33),
          ),
        ),
      ),
    );
  }
}
