import 'package:flutter/material.dart';

import '../widgets/menu_bar.dart';
import '../widgets/stats/bottom_menu_widget.dart';
import '../widgets/stats/stats_card_widget.dart';
import '../widgets/stats/top_menu_widget.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            const TopMenu(),
            Expanded(
                child: ListView(
              children: const [
                Line(),
                Line(),
                Line(),
                Line(),
                Line(),
                Line(),
                Line(),
              ],
            )),
            const BottomMenu(),
          ],
        ),
      ),
      bottomNavigationBar: const MenuBar(),
    );
  }
}
