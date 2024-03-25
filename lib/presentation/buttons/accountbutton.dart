import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';
import 'package:flutter_finalproject/data/demoDB.dart';
import 'package:flutter_finalproject/data/userdb.dart';

class UserButton extends StatelessWidget {
  final DBDemo dbDemo;
  final UserDB userDB;
  const UserButton({super.key, required this.dbDemo, required this.userDB});

  @override
  Widget build(BuildContext context) {
    final userModel = userDB.modelDB.first;
    return Center(
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
                  child: const Text(
                    "View Account",
                    style: TextStyle(color: AppPallete.subtitlecolor),
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
