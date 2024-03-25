import 'package:flutter/material.dart';
import 'package:flutter_finalproject/presentation/pages/widgets/nav_bar.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        centerTitle: true,
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
