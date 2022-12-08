import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealfm/screens/home.dart';
import 'package:sealfm/screens/top.dart';
import 'package:sealfm/screens/stats.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int _selectedIndex = 1;
  PageController pageController = PageController();

  static const List<Widget> _widgetOptions = <Widget>[
    TopScreen(),
    HomeScreen(),
    StatsScreen()
  ];

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0),),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFF0E4DA4),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.show_chart_rounded), label:'Top'),
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label:'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.bar_chart_rounded), label:'Stats')
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color(0xFFc7c7c7),
            onTap: onTapped
          ),
        )
    );
  }
}