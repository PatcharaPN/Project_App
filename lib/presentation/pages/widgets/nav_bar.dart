// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 25.0,
        left: 25.0,
        right: 25.0,
      ),
      child: SizedBox(
        height: 70,
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: AppPallete.transparentColor,
            highlightColor: AppPallete.transparentColor,
          ),
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(60),
            color: Color(0xFF26457B),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                selectedIconTheme: IconThemeData(
                  color: AppPallete.iconColor,
                ),
                unselectedIconTheme:
                    IconThemeData(color: AppPallete.unselectIcon),
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(
                    () {
                      _selectedIndex = index;
                      if (index == 1) {
                        Navigator.pushReplacementNamed(context, '/settingpage');
                      } else if (index == 0) {
                        Navigator.pushReplacementNamed(context, '/');
                      }
                    },
                  );
                },
                selectedItemColor: AppPallete.selecterIcon,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                iconSize: 35,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Notifications',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
