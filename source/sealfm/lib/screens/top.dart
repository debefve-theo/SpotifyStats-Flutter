import 'package:flutter/material.dart';

import '../widgets/top/list_widget.dart';
import '../widgets/top/menu_widget.dart';
import '../utilities/controller.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0, bottom: 40.0),
              child: ListW(data: topData, currentId: currentPlaylistId),
            ),
          ],
        ),
        const MenuW()
      ],
    );
  }
}
