import 'package:flutter/material.dart';

import '../widgets/stats/bottom_menu_widget.dart';
import '../widgets/stats/stats_card_widget.dart';
import '../widgets/stats/top_menu_widget.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(height: 90.0,),
            const Line(),
            const Line(),
            const Line(),
            const Line(),
            const Line(),
            const Line(),
            const Line(),
            Container(height: 80.0,),
          ],
        ),
        const TopMenu(),
        const BottomMenu(),
      ],
    );
  }
}
