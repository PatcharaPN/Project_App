import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';
import 'package:flutter_finalproject/data/demoDB.dart';
import 'package:flutter_finalproject/data/userdb.dart';
import 'package:flutter_finalproject/presentation/buttons/languageBUtton.dart';
import 'package:flutter_finalproject/presentation/buttons/notificationbutton.dart';

class SettingsPage extends StatelessWidget {
  final DBDemo dbDemo;
  final UserDB userDB;

  const SettingsPage({super.key, required this.dbDemo, required this.userDB});

  @override
  Widget build(BuildContext context) {
    final userModel = userDB.modelDB.first;
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
          Center(
            child: Container(
              width: 350,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(colors: [
                    AppPallete.buttongradient2,
                    AppPallete.buttongradient1,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        userModel.userPicture,
                      ),
                      radius: 40,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          userModel.username,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("View Account"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppPallete.logoutButton),
                    child: const Text(
                      "Log out",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppPallete.whiteColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "General Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
              width: 350,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(colors: [
                  AppPallete.buttongradient2,
                  AppPallete.buttongradient1
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child:  const Padding(
                padding: EdgeInsets.symmetric(vertical: 15 ),
                child: Column(
                  children: [
                    NotiButton(),
                    SizedBox(height: 15,),
                    LanguageButton(),
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
