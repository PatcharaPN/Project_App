// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppPallete.buttongradient1,
              AppPallete.buttongradient2,
            ],
          ),
          borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
          fixedSize: Size(400, 70),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppPallete.uiTextColor),
        ),
      ),
    );
  }
}
