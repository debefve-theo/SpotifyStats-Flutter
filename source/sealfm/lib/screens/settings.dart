import 'package:flutter/material.dart';

import '../widgets/home/weekly_top_artists_widget.dart';
import '../widgets/settings/top_bar_widget.dart';
import '../widgets/settings/logout_button.dart';
import '../widgets/settings/version_widget.dart';
import '../widgets/settings/dark_mode_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: const [
                  TopMenu(title: "Settings"),
                  DarkMode(),
                  VersionCard(),
                ],
              ),
              const LogoutButton(),
            ],

          ),
      ),
    );
  }
}
