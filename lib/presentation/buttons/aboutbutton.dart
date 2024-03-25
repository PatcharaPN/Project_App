import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({super.key});

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
                  color: AppPallete.backgroundabout),
              child: const Icon(
                Icons.error_outline_outlined,
                color: AppPallete.abouticon,
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
                  "About",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.whiteColor),
                ),
                Text(
                  "About us",
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
