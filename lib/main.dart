import 'package:flutter/material.dart';
import 'package:flutter_finalproject/HomePage.dart';
import 'package:flutter_finalproject/core/theme/ThemeApp.dart';
import 'package:flutter_finalproject/data/demoDB.dart';
import 'package:flutter_finalproject/data/userdb.dart';
import 'package:flutter_finalproject/presentation/pages/config_page.dart';
import 'package:flutter_finalproject/presentation/pages/settingpage.dart';

import 'presentation/pages/signin_page.dart';
import 'presentation/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

bool checkLoggedInStatus() {
  return false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dbDemo = DBDemo(); //User Mockup data
    final userDB = UserDB(); //UserDatabase

    bool isLoggedIn = checkLoggedInStatus();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: isLoggedIn
          ? HomePage(dbDemo: dbDemo, userDB: userDB)
          : const SignInPage(),
      routes: {
        //Route
        '/homepage': (context) => HomePage(dbDemo: dbDemo, userDB: userDB),
        '/signuppage': (context) => const SignUpPage(),
        '/settingpage': (context) => const SettingPage(),
        '/configpage': (context) => const ConfigPage(),
      },
    );
  }
}
