// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class SearchbarWidget extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;

  const SearchbarWidget({
    Key? key,
    required this.hint,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 350),
        decoration: BoxDecoration(
          color: AppPallete.searchbarcolor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Icon(
                Icons.search,
                color: AppPallete.textColor,
              ),
            ),
            hintStyle: TextStyle(
              color: AppPallete.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
