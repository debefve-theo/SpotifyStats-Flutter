import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyTopArtistsCard extends StatelessWidget {
  const WeeklyTopArtistsCard({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Weekly Top Artists';
    var subtitle = 'Belgium';

    var number_1 = '1';
    var artist_1 = 'David Guetta';
    var imagePath_1 =
        'https://i.scdn.co/image/ab6761610000e5eb75348e1aade2645ad9c58829';

    var number_2 = '2';
    var artist_2 = 'Orelsan';
    var imagePath_2 =
        'https://i.scdn.co/image/ab67616d00001e0258ba1ea637001f9a15e55a92';

    var number_3 = '3';
    var artist_3 = 'Lorenzo';
    var imagePath_3 =
        'https://i.scdn.co/image/ab6761610000e5eb615cff42953bab70eba4f0c1';

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
                                  artist_1,
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
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
                                  artist_2,
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
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
                              artist_3,
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
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
                          Navigator.pushNamed(context, '/settings');
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
