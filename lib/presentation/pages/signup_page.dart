// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../core/theme/app_pallete.dart';
import 'widgets/auth_button.dart';
import 'widgets/auth_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              const AuthField(hintText: "Name"),
              const SizedBox(
                height: 15,
              ),
              const AuthField(hintText: "Email"),
              const SizedBox(
                height: 15,
              ),
              const AuthField(hintText: "Confirm Password"),
              const SizedBox(
                height: 20,
              ),
              const AuthButton(),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Have an account ?",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: " Sign in",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: AppPallete.uiTextColor),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
