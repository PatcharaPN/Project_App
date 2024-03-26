// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class SearchbarWidget extends StatefulWidget {
  final String hint;

  const SearchbarWidget({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  State<SearchbarWidget> createState() => _SearchbarWidgetState();
}

class _SearchbarWidgetState extends State<SearchbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 350),
        decoration: BoxDecoration(
          color: AppPallete.searchbarcolor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/searchpage');
            },
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 30,
                ),
                Text("Search setting,etc")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
