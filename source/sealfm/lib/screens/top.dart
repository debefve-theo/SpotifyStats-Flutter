import 'package:flutter/material.dart';

import '../widgets/top/list_widget.dart';
import '../widgets/top/menu_widget.dart';
import '../utilities/controller.dart';

import '../widgets/top/top_close_widget.dart';
import '../widgets/top/top_open_widget.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(height: 90.0,),
            ListW(data: topData,),
            Container(height: 80.0,),
          ],
        ),
        const MenuW()
      ],
    );
  }
}
