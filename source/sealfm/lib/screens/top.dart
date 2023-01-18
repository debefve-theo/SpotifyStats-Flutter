import 'package:flutter/material.dart';

import '../widgets/top/list_widget.dart';
import '../widgets/top/menu_widget.dart';
import '../utilities/controller.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(height: 90.0,),
            ListW(data: topData, currentId: currentPlaylistId),
            Container(height: 40.0,),
          ],
        ),
        const MenuW()
      ],
    );
  }
}
