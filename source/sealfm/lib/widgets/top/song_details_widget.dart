import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/spotify.dart' as spotify;

class SongWidget extends StatelessWidget {
  //const SongWidget({super.key});

  final int number;
  final String song;
  final String artist;
  final String path;

  const SongWidget({super.key, required this.number, required this.song, required this.artist, required this.path, });

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
                  concatName(song),
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

String concatName(String val) {

  if(val.length > 30) {
    var s = val.substring(0, 26);
    s += ' ...';
    return s;
  }

  return val;
}