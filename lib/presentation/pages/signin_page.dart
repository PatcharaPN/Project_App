// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/presentation/pages/widgets/auth.dart';
import 'package:flutter_finalproject/presentation/pages/widgets/auth_field.dart';

import '../../core/theme/app_pallete.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              AuthField(hintText: "Email"),
              SizedBox(
                height: 15,
              ),
              AuthField(hintText: "Password"),
              SizedBox(
                height: 20,
              ),
              AuthSignIn(),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Dont have an account ?",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: " Sign Up",
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
