import 'package:flutter/material.dart';

class ButtonModel {
  final String title;
  final void Function(BuildContext)? onPressed;
  final IconData icon;

  ButtonModel(this.title, this.onPressed, this.icon);
}
