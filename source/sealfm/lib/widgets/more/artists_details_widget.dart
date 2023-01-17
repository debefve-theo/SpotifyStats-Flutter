import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/spotify.dart' as spotify;

class ArtistWidget extends StatelessWidget {
  //const SongWidget({super.key});

  final int number;
  final String artist;
  final String popularity;
  final String path;

  const ArtistWidget({super.key, required this.number, required this.artist, required this.popularity, required this.path, });

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Row(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(path,
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
                  concatName(artist),
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Popularity: $popularity",
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

String concatName(String val) {

  if(val.length > 30) {
    var s = val.substring(0, 26);
    s += ' ...';
    return s;
  }

  return val;
}