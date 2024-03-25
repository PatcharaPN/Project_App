import 'package:flutter/material.dart';

class GradientColor extends StatelessWidget {
  final List<Color> colors;
  final BorderRadius borderRadius;
  final Widget child;

  const GradientColor(
      {super.key,
      required this.colors,
      this.borderRadius = BorderRadius.zero,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}
