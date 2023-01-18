import 'package:flutter/material.dart';

import 'home.dart';
import 'top.dart';
import 'stats.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<MainScreen> {
  int _selectedIndex = 1;

  static const List<Widget> _pages = <Widget>[
    TopScreen(),
    HomeScreen(),
    StatsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
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
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  onTap: _onItemTapped
              ),
            )
        )
    );
  }
}