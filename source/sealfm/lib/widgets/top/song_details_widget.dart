import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongWidget extends StatelessWidget {
  const SongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var number = '1';
    var song = 'Unholy (feat. Kim Petras)';
    var artist = 'Sam Smith, Kim Petras';
    var imagePath =
        'https://i.scdn.co/image/ab67616d0000b273a935e4689f15953311772cc4';

    return Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Row(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(imagePath,
                width: 60, height: 60, fit: BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'n°$number',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  song,
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  artist,
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ]));
  }
}
