import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  final String title;

  ContentPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
