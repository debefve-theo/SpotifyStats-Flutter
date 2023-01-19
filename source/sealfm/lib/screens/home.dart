import 'package:flutter/material.dart';

import '../widgets/home/currently_playing.dart';
import '../widgets/home/profil_card_log.dart';
import '../widgets/home/profil_card_not_log.dart';
import '../widgets/home/weekly_top_albums_widget.dart';
import '../widgets/home/weekly_top_artists_widget.dart';
import '../widgets/home/weekly_top_songs_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Row(
            children: [
              const SizedBox(
                  width: 280,
                  child: ProfilCardLog()
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(left: 10.0, right: 0.0, top: 20.0),
                elevation: 4,
                color: Colors.white,
                child:IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
              ),
            ],
          ),

          //ProfilCard(),
          //const CurrentlyPlaying(),
          const WeeklyTopAlbumCard(),
          const WeeklyTopSongsCard(),
          const WeeklyTopArtistsCard(),
          Container(height: 40.0,),
        ],
    );
  }
}
