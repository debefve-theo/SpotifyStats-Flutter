import 'package:flutter/material.dart';

import '../widgets/menu_bar.dart';
import '../widgets/home/profil_card_log.dart';
import '../widgets/home/profil_card_not_log.dart';
import '../widgets/home/weekly_top_albums_widget.dart';
import '../widgets/home/weekly_top_artists_widget.dart';
import '../widgets/home/weekly_top_songs_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          ProfilCardLog(),
          ProfilCard(),
          WeeklyTopAlbumCard(),
          WeeklyTopSongsCard(),
          WeeklyTopArtistsCard()
        ],
      ),
      bottomNavigationBar: const MenuBar(),
    );
  }
}
