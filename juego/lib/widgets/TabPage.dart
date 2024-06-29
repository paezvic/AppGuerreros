// ignore_for_file: file_names

import 'package:juego/utils/global.colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juego/widgets/ListsGuerreros.dart';



class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<StatefulWidget> createState() => TabPageState();
}

class TabPageState extends State<TabPage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    Container(
      color: GlobalColors.secondaryColor,
      child: const ListsGuerreos(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: GlobalColors.secondaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
              icon: const Icon(CupertinoIcons.house_fill),
              tooltip: 'home',
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}


