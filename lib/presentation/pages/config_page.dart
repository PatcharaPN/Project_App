import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Config'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppPallete.iconColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text("Config name",style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    AppPallete.buttongradient2
                    ,AppPallete.buttongradient1
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
