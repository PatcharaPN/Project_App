// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class AuthSignIn extends StatelessWidget {
  const AuthSignIn({super.key});

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
        onPressed: () async {
          await Navigator.pushNamed(context, '/homepage');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
          fixedSize: Size(400, 70),
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppPallete.uiTextColor),
        ),
      ),
    );
  }
}
