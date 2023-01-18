import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/stats/stats_card_song_widget.dart';
import '../widgets/stats/stats_card_artist_widget.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int _selectedIndex = 0;
  int a = 0;
  int b = 0;
  bool _isSongsSelected = true;
  bool _isArtistsSelected = false;
  bool _isWeeksSelected = true;
  bool _isMonthsSelected = false;
  bool _isAllSelected = false;

  static final List<Widget> _pages = <Widget>[
    songStats(ind: 0),
    songStats(ind: 1),
    songStats(ind: 2),
    artistStats(ind: 0),
    artistStats(ind: 1),
    artistStats(ind: 2),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if(index == 0) {
        a = 0;
        b = 0;
        _isSongsSelected = true;
        _isArtistsSelected = false;
        _isWeeksSelected = true;
        _isMonthsSelected = false;
        _isAllSelected = false;
      } else if(index == 1) {
        a = 0;
        b = 1;
        _isSongsSelected = true;
        _isArtistsSelected = false;
        _isWeeksSelected = false;
        _isMonthsSelected = true;
        _isAllSelected = false;
      } if(index == 2) {
        a = 0;
        b = 2;
        _isSongsSelected = true;
        _isArtistsSelected = false;
        _isWeeksSelected = false;
        _isMonthsSelected = false;
        _isAllSelected = true;
      } else if(index == 3) {
        a = 1;
        b = 0;
        _isSongsSelected = false;
        _isArtistsSelected = true;
        _isWeeksSelected = true;
        _isMonthsSelected = false;
        _isAllSelected = false;
      } else if(index == 4) {
        a = 1;
        b = 1;
        _isSongsSelected = false;
        _isArtistsSelected = true;
        _isWeeksSelected = false;
        _isMonthsSelected = true;
        _isAllSelected = false;
      } else if(index == 5) {
        a = 1;
        b = 2;
        _isSongsSelected = false;
        _isArtistsSelected = true;
        _isWeeksSelected = false;
        _isMonthsSelected = false;
        _isAllSelected = true;
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
                            if(b == 0) {
                              _onItemTapped(0);
                            } else if(b == 1) {
                              _onItemTapped(1);
                            } else {
                              _onItemTapped(2);
                            }
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
                            if(b == 0) {
                              _onItemTapped(3);
                            } else if(b == 1) {
                              _onItemTapped(4);
                            } else {
                              _onItemTapped(5);
                            }
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
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
                elevation: 4,
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 3.0, bottom: 3.0, right: 5.0, left: 10.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            //Navigator.pushNamed(context, '/stats');
                            if(a == 0) {
                              _onItemTapped(0);
                            } else {
                              _onItemTapped(3);
                            }
                          },
                          child: Text(
                            '4 weeks',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: _isWeeksSelected ? Colors.black : Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 3.0, bottom: 3.0, right: 5.0, left: 5.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            //Navigator.pushNamed(context, '/stats');
                            if(a == 0) {
                              _onItemTapped(1);
                            } else {
                              _onItemTapped(4);
                            }
                          },
                          child: Text(
                            '6 month',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: _isMonthsSelected ? Colors.black : Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 3.0, bottom: 3.0, right: 10.0, left: 5.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            //Navigator.pushNamed(context, '/stats');
                            if(a == 0) {
                              _onItemTapped(2);
                            } else {
                              _onItemTapped(5);
                            }
                          },
                          child: Text(
                            'All time',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: _isAllSelected ? Colors.black : Colors.black26,
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
      ],
    );
  }
}