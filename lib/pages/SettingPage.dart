import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';
import 'package:flutter_finalproject/data/demoDB.dart';
import 'package:flutter_finalproject/data/userdb.dart';
import 'package:flutter_finalproject/presentation/buttons/aboutbutton.dart';
import 'package:flutter_finalproject/presentation/buttons/accountbutton.dart';
import 'package:flutter_finalproject/presentation/buttons/languageBUtton.dart';
import 'package:flutter_finalproject/presentation/buttons/notificationbutton.dart';

class SettingsPage extends StatelessWidget {
  final DBDemo dbDemo;
  final UserDB userDB;

  const SettingsPage({super.key, required this.dbDemo, required this.userDB});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          UserButton(dbDemo: dbDemo, userDB: userDB),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "General Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(colors: [
                  AppPallete.buttongradient2,
                  AppPallete.buttongradient1
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    NotiButton(),
                    SizedBox(
                      height: 10,
                    ),
                    LanguageButton(),
                    SizedBox(
                      height: 10,
                    ),
                    AboutButton()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
