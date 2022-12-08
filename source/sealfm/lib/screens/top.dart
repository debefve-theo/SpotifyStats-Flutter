import 'package:flutter/material.dart';

import '../widgets/menu_bar.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: (

      ),
      bottomNavigationBar: const MenuBar(),
    );
  }
}
