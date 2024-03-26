import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_finalproject/core/theme/app_pallete.dart';
import 'package:flutter_finalproject/data/Searchmodel.dart';

class Searchpage extends StatefulWidget {
  final String hint;
  const Searchpage({Key? key, required this.hint}) : super(key: key);

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  static List<ButtonModel> buttonModel = [
    ButtonModel("Setting", (BuildContext context) {
      Navigator.pushNamed(context, '/settingpage');
    }, Icons.abc_outlined),
    ButtonModel("Device 1", (BuildContext context) {
      Navigator.pushNamed(context, '/configpage');
    }, Icons.access_alarm_outlined),
    ButtonModel("Device 2", (BuildContext context) {
      Navigator.pushNamed(context, '/configpage');
    }, Icons.ac_unit),
  ];

  List<ButtonModel> displaysetting = List.from(buttonModel);
  Timer? _debounce;

  void updateList(String value) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 1), () {
      setState(() {
        displaysetting = buttonModel
            .where((element) =>
                element.title.toLowerCase().contains(value.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 350),
              decoration: BoxDecoration(
                color: AppPallete.searchbarcolor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) => updateList(value),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hint,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 40.0, right: 20),
                        child: Icon(
                          Icons.search,
                          color: AppPallete.textColor,
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: AppPallete.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: displaysetting.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(displaysetting[index].icon),
                  title: Text(displaysetting[index].title),
                  onTap: displaysetting[index].onPressed != null
                      ? () => displaysetting[index].onPressed!(context)
                      : null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
