import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shadowColor: AppPallete.transparentColor,
          elevation: 0,
          backgroundColor: AppPallete.transparentColor),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical:10 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppPallete.backgroundlanguage),
              child: const Icon(
                Icons.language,
                color: AppPallete.backgroundIcon,
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
                  "Language",
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: AppPallete.whiteColor),
                ),
                Text(
                  "Change language,region",
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
