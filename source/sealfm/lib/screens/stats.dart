/*import 'package:flutter/material.dart';

import '../widgets/stats/bottom_menu_widget.dart';
import '../widgets/stats/stats_card_song_widget.dart';
import '../widgets/stats/top_menu_widget.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        songStats(),
        TopMenu(),
        BottomMenu(),
      ],
    );
  }
}
*/

import 'package:flutter/material.dart';

import '../widgets/stats/bottom_menu_widget.dart';
import '../widgets/stats/stats_card_song_widget.dart';
import '../widgets/stats/stats_card_artist_widget.dart';
import '../widgets/stats/top_menu_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int _selectedIndex = 0;
  bool _isSongsSelected = true;
  bool _isArtistsSelected = false;

  static const List<Widget> _pages = <Widget>[
    songStats(),
    artistStats(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 0) {
        _isSongsSelected = true;
        _isArtistsSelected = false;
      } else {
        _isSongsSelected = false;
        _isArtistsSelected = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _pages.elementAt(_selectedIndex),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                elevation: 4,
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 3.0, bottom: 3.0, right: 10.0, left: 35.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            //Navigator.pushNamed(context, '/stats');
                            _onItemTapped(0);
                          },
                          child: Text(
                            'Songs',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: _isSongsSelected ? Colors.black : Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 3.0, bottom: 3.0, right: 35.0, left: 10.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            //Navigator.pushNamed(context, '/stats');
                            _onItemTapped(1);
                          },
                          child: Text(
                            'Artists',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: _isArtistsSelected ? Colors.black : Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const BottomMenu(),
      ],
    );
  }
}