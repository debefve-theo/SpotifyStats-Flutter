import 'package:flutter/material.dart';

import '../widgets/settings/top_bar_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      body: SafeArea(
        child: TopMenu(),
      ),
    );
  }
}
