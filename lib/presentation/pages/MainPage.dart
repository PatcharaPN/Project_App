import 'package:flutter/material.dart';
import 'package:flutter_finalproject/data/demoDB.dart';

import 'widgets/Device_widget.dart';

class MainPage extends StatelessWidget {
  final DBDemo dbDemo;

  const MainPage({super.key, required this.dbDemo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          DeviceWidgets(
            dbDemo: dbDemo,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
