// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/data/demoDB.dart';
import 'package:flutter_finalproject/pages/SettingPage.dart';
import 'package:flutter_finalproject/presentation/pages/MainPage.dart';
import 'package:flutter_finalproject/data/userdb.dart';
import 'package:flutter_finalproject/data/usermodel.dart';
import 'package:flutter_finalproject/presentation/pages/searchbar_page.dart';

import 'core/theme/app_pallete.dart';

class HomePage extends StatefulWidget {
  final DBDemo dbDemo;
  final UserDB userDB;

  const HomePage({super.key, required this.dbDemo, required this.userDB});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserModel currentUser;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    currentUser = widget.userDB.modelDB.first;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; //Setstate for pressing to another page
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: AppPallete.iconColor,
              size: 40,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 125.0),
            child: Text(currentUser.username),
          ),
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage(currentUser.userPicture),
              radius: 40,
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: SearchbarWidget(
              //Searchbar Widget
              hint: "search settings, etc",
              onChanged: (value) {},
            ),
          ),
        ),
      ),
      body: _buildBody(), //Build Content from pressing BottomNav
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
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
              color: const Color(0xFF26457B),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  selectedIconTheme: const IconThemeData(
                    color: AppPallete.iconColor,
                  ),
                  unselectedIconTheme:
                      const IconThemeData(color: AppPallete.unselectIcon),
                  selectedItemColor: AppPallete.selecterIcon,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  iconSize: 35,
                  selectedFontSize: 0,
                  unselectedFontSize: 0,
                  type: BottomNavigationBarType.fixed, //BottomNav
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return MainPage(dbDemo: widget.dbDemo);
      case 1:
        return SettingsPage(dbDemo: widget.dbDemo, userDB: widget.userDB);
      default:
        return const Center(
          child: Text('Page Content Not Found'),
        );
    }
  }
}
