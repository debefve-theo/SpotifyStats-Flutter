import 'package:flutter/material.dart';

import '../widgets/settings/top_bar_widget.dart';
import '../widgets/more/list.dart';
import '../utilities/controller.dart';

class MoreScreen extends StatelessWidget {

  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(height: 90.0,),
                ListWidget(data: topData,),
                Container(height: 80.0,),
              ],
            ),
            const TopMenu(title: "Test"),
          ],
        ),
      ),
    );
  }
}
