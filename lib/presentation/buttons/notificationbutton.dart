import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class NotiButton extends StatelessWidget {
  const NotiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shadowColor: AppPallete.transparentColor,
                elevation: 0,
                backgroundColor: AppPallete.transparentColor),
            onPressed: () {},
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
                  width: 65,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Botification",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        ),
      ],
    );
  }
}
