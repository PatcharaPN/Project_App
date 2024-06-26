import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class NotiButton extends StatelessWidget {
  const NotiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shadowColor: AppPallete.transparentColor,
          elevation: 0,
          backgroundColor: AppPallete.transparentColor),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppPallete.backgroundNav),
              child: const Icon(
                Icons.notifications_none_rounded,
                color: AppPallete.backgroundNavIcon,
                size: 50,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notification",
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: AppPallete.whiteColor),
                ),
                Text(
                  "Mute or Push Notification",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppPallete.subtitlecolor,
                      fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
