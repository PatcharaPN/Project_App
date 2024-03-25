import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  const AuthField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is empty!';
        }
        return null;
      },
    );
  }
}
