import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyTopSongsCard extends StatelessWidget {
  const WeeklyTopSongsCard({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Weekly Top Songs';
    var subtitle = 'Belgium';

    var number_1 = '1';
    var song_1 = 'Unholy (feat. Kim Petras)';
    var artist_1 = 'Sam Smith, Kim Petras';
    var imagePath_1 =
        'https://i.scdn.co/image/ab67616d0000b273a935e4689f15953311772cc4';

    var number_2 = '2';
    var song_2 = 'I’m good (Blue)';
    var artist_2 = 'David Guetta';
    var imagePath_2 =
        'https://i.scdn.co/image/ab67616d0000b273933c036cd61cd40d3f17a9c4';

    var number_3 = '3';
    var song_3 = 'Miss You';
    var artist_3 = 'Oliver Tree, Robin Schulz';
    var imagePath_3 =
        'https://i.scdn.co/image/ab67616d0000b2735b1bff1152ef6d402c9b75a8';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            elevation: 4,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: GoogleFonts.nunito(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              subtitle,
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ]),
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: Row(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(imagePath_1,
                                width: 60, height: 60, fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'n°$number_1',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  song_1,
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  artist_1,
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: Row(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(imagePath_2,
                                width: 60, height: 60, fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'n°$number_2',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  song_2,
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  artist_2,
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    Row(children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(imagePath_3,
                            width: 60, height: 60, fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'n°$number_3',
                              style: GoogleFonts.nunito(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              song_3,
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              artist_3,
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0E4DA4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/stats');
                        },
                        child: Text(
                          'See more ...',
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
